using Formula1.DTOs;
using Formula1.Models;

namespace Formula1.Services
{
    public interface IFormulaOneService
    {
        List<Driver> GetDrivers();

        List<Race> GetRaces();

        List<RaceYear> GetRaceDetails(int season, string race, int driver);

        List<int> GetSeasons();

        string GetTeamName(int driverID);
        string GetDriverName(int driverID);

        void AddRace(Race race);

        void DeleteRace(Race race);

        void AddRaceResult(RaceYear raceResult);
        void DeleteRaceResult(RaceYear raceResult);

        List<Driver> GetNotUsedDrivers(string race, int season);

        int GetIdOfRace(string race);

        int GetNotUsedRankings(int selectedYear, string selectedRace);

        string GetFirstRace();

        int GetLatestSeason();

        List<DriverChampion> GetChampionshipStats(int selectedYear);
        List<ConstructorChampion> GetConstructorChampion(int selectedYear);
    }
}
