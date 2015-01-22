using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace BindValidation
{
    class StatesAlphabetValidationRule : ValidationRule
    {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            uint numValue = 0;

            try
            {
                if (((string)value).Length > 0)
                    numValue = UInt32.Parse((String)value);
            }
            catch (Exception e)
            {
                return new ValidationResult(false, "Illegal characters or " + e.Message);
            }

            if (numValue < 1)
            {
                return new ValidationResult(false, "Please enter a number greater than or equal to 0");
            }
            else
            {
                return new ValidationResult(true, null);
            }
        }
    }
}
