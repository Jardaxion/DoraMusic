//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MusicAppWPF
{
    using System;
    using System.Collections.Generic;
    
    public partial class music
    {
        public int id { get; set; }
        public Nullable<int> user_id { get; set; }
        public string path { get; set; }
        public string category { get; set; }
    
        public virtual users users { get; set; }
    }
}
