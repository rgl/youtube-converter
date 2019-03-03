This converts YouTube videos to MP3.

# Usage

Download and install the `youtube-dl` binary:

```bash
sudo wget -qO /usr/local/bin/youtube-dl https://github.com/rg3/youtube-dl/releases/download/2019.03.01/youtube-dl
sudo chmod +x /usr/local/bin/youtube-dl
youtube-dl --version
```

Download and install the latest version of `ffmpeg`:

```bash
wget -q https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
tar xf ffmpeg-release-amd64-static.tar.xz
sudo install ffmpeg-*-amd64-static/{ffmpeg,ffprobe} /usr/local/bin
rm -rf ffmpeg-release-amd64-static.tar.xz ffmpeg-*-amd64-static
ffmpeg -version
```

Or use your distribution package, e.g.:

```bash
sudo apt install ffmpeg
```

Finally build and install this converter:

```bash
make
sudo cp youtube-converter{,.glade} /usr/local/bin
sudo cp -r youtube-converter-locale /usr/local/bin
sudo cp youtube-converter.desktop /usr/share/applications
```

# Reference

* [youtube-dl](https://github.com/rg3/youtube-dl/)
* [The Python GTK+ 3 Tutorial](https://python-gtk-3-tutorial.readthedocs.io/)
* [PyGObject](https://pygobject.readthedocs.io/)
* [D-Feet (D-Bus debugger/viewer)](https://github.com/GNOME/d-feet)
* [Desktop Entry Specification](https://specifications.freedesktop.org/desktop-entry-spec/latest/index.html)
* [Visual layout (Gnome HIG)](https://developer.gnome.org/hig/stable/visual-layout.html.en)
* [gettext manual](https://www.gnu.org/software/gettext/manual/index.html)
