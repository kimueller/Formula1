using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Formula1.Models
{
    public class Driver
    {
        [Key]
        [Range(1, 24)]
        public int DriverID { get; set; }

        [Required]
        [StringLength(100)]
        public string FirstName { get; set; }

        [Required]
        [StringLength(100)]
        public string LastName { get; set; }

        [ForeignKey("TeamID")]
        public int TeamID { get; set; }
        public Team Team { get; set; }

        public virtual ICollection<RaceYear> RaceYears { get; set; }

    }
}
