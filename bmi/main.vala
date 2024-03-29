using Gtk;


int main (string[] args) {     
    Gtk.init (ref args);

    try {
        var builder = new Builder ();
        builder.add_from_file ("gui/main_screen.glade");
        builder.connect_signals (null);
        var window = builder.get_object ("main_window") as Window;
        window.show_all ();
        Gtk.main ();
    } catch (Error e) {
        stderr.printf ("Could not load UI: %s\n", e.message);
        return 1;
    } 

    return 0;
}