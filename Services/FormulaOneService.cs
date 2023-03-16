using Formula1.Data;
using Formula1.DTOs;
using Formula1.Models;
using Formula1.Pages.FormulaOne;
using Microsoft.AspNetCore.SignalR;
using Microsoft.EntityFrameworkCore;

namespace Formula1.Services
{
    public class FormulaOneService : IFormulaOneService
    {
        private readonly ApplicationDbContext dbc;
        public FormulaOneService(ApplicationDbContext dbc)
        {
            this.dbc = dbc;
        }

        /// <summary>
        /// Adds a new race to the db
        /// </summary>
        /// <param name="race"></param>
        public void AddRace(Race race)
        {
            dbc.Add(race);
            dbc.SaveChanges();
        }

        /// <summary>
        /// Deletes the chosen race from the db
        /// </summary>
        /// <param name="race"></param>
        public void DeleteRace(Race race)
        {
            dbc.Remove(race);
            dbc.SaveChanges();
        }

        /// <summary>
        /// Gives a list of all drivers
        /// </summary>
        /// <returns>
        /// the return values are getting 
        /// stored into a List of the Driver class
        /// </returns>
        public List<Driver> GetDrivers()
        {
            var driver = dbc.Drivers
                        .Include(d => d.Team)
                        .OrderBy(d => d.DriverID)
                        .Select(d => new Driver
                        {
                            DriverID = d.DriverID,
                            FirstName = d.FirstName,
                            LastName = d.LastName,
                            TeamID = d.TeamID,
                            Team = d.Team,
                        });
            return driver.ToList();
        }


        /// <summary>
        /// Gives a list of the result of the race
        /// </summary>
        /// <param name="season">chosen year from the dropdown</param>
        /// <param name="race">chosen race from the dd</param>
        /// <param name="driver">chosen driver from the dd</param>
        /// <returns></returns>
        public List<RaceYear> GetRaceDetails(int season, string race, int driver)
        {
            var details = dbc.RaceYears
                          .Include(ry => ry.Drivers)
                          .Include(ry => ry.Race)
                          .OrderBy(ry => ry.RankingID)
                          .Where(ry => ry.Year == season && ry.Race.TrackName == race)
                          .Select(ry => new RaceYear
                          {
                              DriverID = ry.DriverID,
                              RaceID = ry.RaceID,
                              Race = ry.Race,
                              Drivers = ry.Drivers,
                              Year = ry.Year,
                              RaceYearID = ry.RaceYearID,
                              Ranking = ry.Ranking,
                              RankingID = ry.RankingID
                          });

            if (driver != 0)//if a driver is in a race he should be displayed else the list will be empty
            {
                details = details.Where(ry => ry.DriverID == driver);
            }
            return details.ToList();
        }

        /// <summary>
        /// Gives you all races
        /// </summary>
        /// <returns>A list of the class Race</returns>
        public List<Race> GetRaces()
        {
            var races = dbc.Races
                        .Include(r => r.RaceYears)
                        .Select(r => new Race
                        {
                            RaceID = r.RaceID,
                            TrackName = r.TrackName,
                            RaceYears = r.RaceYears,
                        });
            return races.ToList();
        }

        /// <summary>
        /// This is used to get the years for the dropdown
        /// </summary>
        /// <returns>list of integers(years)</returns>
        public List<int> GetSeasons()
        {
            var season = dbc.RaceYears
                        .Select(ry => ry.Year)
                        .Distinct();//else the dropdown would have the same year over and over 
            return season.ToList();
        }

        /// <summary>
        /// Used to get the teamname of the driver displayed
        /// </summary>
        /// <param name="driverID"></param>
        /// <returns>the teamname of given driver</returns>
        public string GetTeamName(int driverID)
        {
            var team = dbc.Drivers
                       .Where(d => d.DriverID == driverID)
                       .Select(d => d.Team.TeamName)
                       .FirstOrDefault();
            return team;
        }

        /// <summary>
        /// Used to get the drivername from the driverid of DriverChampion class
        /// </summary>
        /// <param name="driverID"></param>
        /// <returns></returns>
        public string GetDriverName(int driverID)
        {
            var driver = dbc.Drivers
                         .Where(d => d.DriverID == driverID)
                         .Select(d => d.FirstName + " " + d.LastName)
                         .FirstOrDefault();
            return driver;
        }
        /// <summary>
        /// Adds the given raceResult
        /// </summary>
        /// <param name="raceResult"></param>
        public void AddRaceResult(RaceYear raceResult)
        {
            dbc.Add(raceResult);
            dbc.SaveChanges();
            //else the DB throws an exepction that the State of the RaceYearID is still being tracked
            dbc.Entry(raceResult).State = EntityState.Detached;
        }

        /// <summary>
        /// Deletes given race result
        /// </summary>
        /// <param name="raceResult"></param>
        public void DeleteRaceResult(RaceYear raceResult)
        {
            //same exepction handling as the AddRaceResult 
            var existingState = dbc.RaceYears.Find(raceResult.RaceYearID);
            if (existingState != null)
            {
                dbc.Entry(existingState).State = EntityState.Detached;
                dbc.Entry(raceResult).State = EntityState.Modified;
            }

            dbc.Remove(raceResult);
            dbc.SaveChanges();
        }

        /// <summary>
        /// Gives a list of drives that have no race result in given race & season
        /// </summary>
        /// <param name="race"></param>
        /// <param name="season"></param>
        /// <returns>list of drivers with no raceresult</returns>
        public List<Driver> GetNotUsedDrivers(string race, int season)
        {
            //to get the drivers that have a result
            var usedDrivers = dbc.RaceYears
                              .Where(ry => ry.Race.TrackName == race && ry.Year == season)
                              .Select(ry => ry.DriverID)
                              .ToList();

            var unusedDrivers = dbc.Drivers
                                .Where(d => !usedDrivers.Contains(d.DriverID))//negate the usedDrivers so we get the unused drivers
                                .ToList();

            return unusedDrivers;
        }

        /// <summary>
        /// Gives back the lowest rank that is not used
        /// </summary>
        /// <param name="selectedYear"></param>
        /// <param name="selectedRace"></param>
        /// <returns></returns>
        public int GetNotUsedRankings(int selectedYear, string selectedRace)
        {
            //follows the same principle of the GetNoUsedDrivers function
            var usedRankings = dbc.RaceYears
                                .Where(ry => ry.Race.TrackName == selectedRace && ry.Year == selectedYear)
                                .Select(ry => ry.RankingID)
                                .ToList();
            var notUsedRanking = dbc.Rankings
                               .Where(r => !usedRankings.Contains(r.RankingPlace))
                               .Select(r => r.RankingPlace)
                               .Distinct()
                               .FirstOrDefault();
            return notUsedRanking;
        }

        /// <summary>
        /// Gives back the id of the race
        /// used for adding race result
        /// </summary>
        /// <param name="race"></param>
        /// <returns></returns>
        public int GetIdOfRace(string race)
        {
            var raceID = dbc.Races
                        .Where(r => r.TrackName == race)
                        .Select(r => r.RaceID)
                        .Distinct()
                        .FirstOrDefault();

            return raceID;
        }

        /// <summary>
        /// Gives back the first race in the db
        /// used for the dropdown
        /// </summary>
        /// <returns></returns>
        public string GetFirstRace()
        {
            var race = dbc.Races
                        .OrderBy(r => r.RaceID)
                        .Select(r => r.TrackName)
                        .FirstOrDefault();
            return race;
        }

        /// <summary>
        /// gives back the latest 
        /// used for dropdown
        /// </summary>
        /// <returns></returns>
        public int GetLatestSeason()
        {
            var season = dbc.RaceYears
                         .OrderByDescending(ry => ry.Year)
                         .Select(ry => ry.Year)
                         .FirstOrDefault();
            return season;
        }

        /// <summary>
        /// Gives a list with the totalpoints and drivername
        /// </summary>
        /// <param name="selectedYear"></param>
        /// <returns></returns>
        public List<DriverChampion> GetChampionshipStats(int selectedYear)
        {
            var driverPoints = dbc.RaceYears
                .Where(ry => ry.Year == selectedYear)
                .GroupBy(ry => ry.DriverID)
                .Select(c => new DriverChampion
                {
                    DriverID = c.Key,
                    TotalPoints = c.Sum(ry => ry.Ranking.Points)

                }).OrderByDescending(ry => ry.TotalPoints);

            return driverPoints.ToList();
        }

        public List<ConstructorChampion> GetConstructorChampion(int selectedYear)
        {
            var constructor = dbc.RaceYears
                .Where(ry => ry.Year == selectedYear)
                .GroupBy(ry => ry.Drivers.TeamID)
                .Select(c => new ConstructorChampion
                {
                    TeamID = c.Key,
                    TotalPoints = c.Sum(ry => ry.Ranking.Points)

                }).OrderByDescending(ry => ry.TotalPoints)
                .Join(dbc.Teams, c => c.TeamID, t => t.TeamID, (c, t) => new ConstructorChampion
                {
                    TeamID = c.TeamID,
                    TotalPoints = c.TotalPoints,
                    TeamName = t.TeamName
                });

            return constructor.ToList();
        }
    }
}
