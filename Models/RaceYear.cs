using System.ComponentModel.DataAnnotations;

namespace Formula1.Models
{
    public class RaceYear
    {
        [Key]
        public int RaceYearID { get; set; }

        [Required]
        [MaxLength(4)]
        public int Year { get; set; }

        public int RankingID { get; set; }
        public Ranking Ranking { get; set; }

        public int DriverID { get; set; }
        public Driver Drivers { get; set; }

        public int RaceID { get; set; }
        public Race Race { get; set; }
    }
}
