static const char norm_fg[] = "#caeaec";
static const char norm_bg[] = "#101317";
static const char norm_border[] = "#8da3a5";

static const char sel_fg[] = "#caeaec";
static const char sel_bg[] = "#616997";
static const char sel_border[] = "#caeaec";

static const char urg_fg[] = "#caeaec";
static const char urg_bg[] = "#3860A4";
static const char urg_border[] = "#3860A4";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
