using System.ComponentModel.DataAnnotations;

namespace Formula1.Models
{
    public class Ranking
    {
        [Key]
        public int RankingPlace { get; set; }

        [Required]
        public int Points { get; set; }

        public virtual ICollection<RaceYear> RaceYears { get; set; }

    }
}
