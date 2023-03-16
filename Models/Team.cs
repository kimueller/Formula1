using System.ComponentModel.DataAnnotations;

namespace Formula1.Models
{
    public class Team
    {
        [Key]
        [Range(1, 12)]
        public int TeamID { get; set; }

        [Required]
        [StringLength(100)]
        public string TeamName { get; set; }

        public virtual ICollection<Driver> Drivers { get; set; }

    }
}
