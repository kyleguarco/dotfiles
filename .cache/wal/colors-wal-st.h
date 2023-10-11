const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#101317", /* black   */
  [1] = "#3860A4", /* red     */
  [2] = "#616997", /* green   */
  [3] = "#B36CBA", /* yellow  */
  [4] = "#699FB6", /* blue    */
  [5] = "#AAA2BC", /* magenta */
  [6] = "#A1A2D5", /* cyan    */
  [7] = "#caeaec", /* white   */

  /* 8 bright colors */
  [8]  = "#8da3a5",  /* black   */
  [9]  = "#3860A4",  /* red     */
  [10] = "#616997", /* green   */
  [11] = "#B36CBA", /* yellow  */
  [12] = "#699FB6", /* blue    */
  [13] = "#AAA2BC", /* magenta */
  [14] = "#A1A2D5", /* cyan    */
  [15] = "#caeaec", /* white   */

  /* special colors */
  [256] = "#101317", /* background */
  [257] = "#caeaec", /* foreground */
  [258] = "#caeaec",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
