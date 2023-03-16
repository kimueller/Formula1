using System.ComponentModel.DataAnnotations;

namespace Formula1.Models
{
    public class Race
    {
        [Key]
        public int RaceID { get; set; }

        [Required(ErrorMessage = "Track name is required.")]
        [StringLength(100)]
        public string TrackName { get; set; }

        public virtual ICollection<RaceYear> RaceYears { get; set; }

    }
}
