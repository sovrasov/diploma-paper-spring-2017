import unicode;
import common;
unitsize(0.5cm);

// texpreamble("\usepackage[russian]{babel}");
// defaultpen(font("T2A", "cmss", "m", "n"));
texpreamble("\usepackage{cmbright}\usepackage{fontspec}\setromanfont{CMU Sans Serif}\setsansfont{CMU Sans Serif}\usepackage{babel}\usepackage{polyglossia}");

// Maxwell's equation integration
label("\textbf{Интегрирование}", (4,10), p=unnblue4);
label("\textbf{уравнений Максвелла}", (4,9.2), p=unnblue4);
label("$\nabla\times\mathbf{B}=\frac{1}{c}\partial_t\mathbf{E}+\frac{4\pi}{c}\mathbf{J}$",
(4,8));
label("$\nabla\times\mathbf{E}=-\frac{1}{c}\partial_t\mathbf{B}$", (4,6.8));

// Field interpolation
label("\textbf{Интерполяция полей и}", (17,10), p=unnblue4);
label("\textbf{вычисление силы Лоренца}", (17,9.2), p=unnblue4);
label("$\mathbf{F}_i=q_i\left(\mathbf{E}(\mathbf{r}_i)+\frac{1}{c}\mathbf{v}_i\times\mathbf{B}(\mathbf{r}_i)\right)$", (17,8));

// Particle push
label("\textbf{Движение частиц}", (17,5), p=unnblue4);
label("$\frac{d}{dt}\mathbf{p}_i=\mathbf{F}_i\quad\frac{d}{dt}\mathbf{r}_i=\mathbf{v}_i$", (17,4));
label("$\mathbf{v}_i=\frac{1}{m_i}\mathbf{p}_i\left(1+\left(\frac{\mathbf{p}_i}{m_i c}\right)^2\right)^{-\frac12}$", (17.5,2.8));

// Current deposition
label("\textbf{Взвешивание токов}", (4,4), p=unnblue4);
label("$\mathbf{J}(\mathbf{r})=\sum\limits_i q_i\mathbf{v}_i\delta\left(\mathbf{r}_i-\mathbf{r}\right)$", (4,2.5));

// Arrows
// fields
arrowbar arr = Arrow(DefaultHead, size=10bp);
label("$\mathbf{E},\;\mathbf{B}$", (9.75,8), N);
draw((8.5,8)--(11,8), arrow=arr);

// velocities and positions
label("$\mathbf{r}_i,\;\mathbf{v}_i$", (10.5,3.3), S);
draw((12,3.5)--(9,3.5), arrow=arr);

// forces
label("$\mathbf{F}_i$", (17.2,6.25), E);
draw((17,7)--(17,5.5), arrow=arr);

// currents
label("$\mathbf{J}$", (3.8,5.25), W);
draw((4,4.5)--(4,6), arrow=arr);

// time
label("$\Delta t$", (10,5.9));
draw(arc((10,5.9),1.3,223,47), arrow=arr);
draw(arc((10,5.9),1.3,403,227), arrow=arr);

