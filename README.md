# 🚀 Practica1 "Instalación y Funcionamiento de los Entornos Móviles"

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![VS Code](https://img.shields.io/badge/IDE-VSCode-007ACC?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![Android](https://img.shields.io/badge/Platform-Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)
![iOS](https://img.shields.io/badge/Platform-iOS-000000?style=for-the-badge&logo=apple&logoColor=white)

## 🌟 Descripción del Proyecto

`Practica1 Flutter` es una aplicación móvil multiplataforma desarrollada con **Flutter** y **Dart**, diseñada para explorar y demostrar el uso de los componentes de interfaz de usuario (UI) más comunes. Este proyecto sirve como un recurso interactivo y educativo para entender cómo construir y gestionar elementos UI fundamentales en el ecosistema de Flutter.

Inspirado en una estructura de "Activities" y "Fragments" de Android nativo, este proyecto traduce esos conceptos a "Screens" (Pantallas) y "Widgets" en Flutter, ofreciendo una experiencia práctica para desarrolladores que migran o aprenden Flutter.

## ✨ Características Principales

*   **Menú Principal Intuitivo (`MainMenuScreen`):** Una pantalla de inicio bien diseñada que funciona como un directorio, permitiendo una navegación fluida a diferentes demostraciones de componentes UI.
*   **5 Pantallas de Demostración Dedicadas:** Cada pantalla (`Screen`) se enfoca en un tipo específico de componente UI, proporcionando:
    *   **TextFields (`TextFieldsScreen`):** Ejemplos interactivos de campos de texto, mostrando diferentes tipos de entrada y sus propiedades.
    *   **Botones (`BotonesScreen`):** Demostración de varios tipos de botones (ElevatedButton, OutlinedButton, TextButton, FloatingActionButton, IconButton) y cómo reaccionan a la interacción del usuario.
    *   **Elementos de Selección (`ElementosSeleccionScreen`):** Práctica con Checkboxes, RadioButtons y Switches para gestionar selecciones de usuario.
    *   **Listas (`ListasScreen`):** Implementación de listas eficientes con `ListView.builder` para mostrar colecciones de datos dinámicamente.
    *   **Elementos de Información (`ElementosInformacionScreen`):** Uso de widgets para mostrar texto, imágenes y barras de progreso (`LinearProgressIndicator`, `CircularProgressIndicator`).
*   **Diseño Material Design:** La aplicación sigue las directrices de Material Design para una interfaz de usuario moderna y atractiva.
*   **Separación Clara de la Lógica:** Estructura de carpetas organizada para mantener el código modular y fácil de entender (`models`, `screens`, `widgets`).
*   **Interactividad:** Cada sección incluye demostraciones donde el usuario puede interactuar directamente con los componentes para observar su comportamiento.

ESTRUCTURA DEL PROYECTO: 


<img width="407" height="847" alt="image" src="https://github.com/user-attachments/assets/061ac014-5471-4180-ad54-2ff5283c23ca" />

## 📱 Vistas Preeliminares

Menú principal


<img width="400" height="650" alt="image" src="https://github.com/user-attachments/assets/6bd8c071-6719-4f41-ab2c-c9d17f9093e6" />

Text Field Section



<img width="400" height="650" alt="image" src="https://github.com/user-attachments/assets/933c1d76-efc5-4c84-8a80-a18f787be7dd" />


Boton Section


<img width="400" height="650" alt="image" src="https://github.com/user-attachments/assets/a9c7a25f-8db7-4a99-b0bf-1c5dadca05d7" />


Selection


<img width="400" height="650" alt="image" src="https://github.com/user-attachments/assets/cae9d55e-b163-4539-be4c-4bb77ac9b075" />



Listas



<img width="400" height="650" alt="image" src="https://github.com/user-attachments/assets/4968a372-4146-45ab-9150-966f7003a479" />



Info


<img width="400" height="650" alt="image" src="https://github.com/user-attachments/assets/99efeb43-dd43-40dc-9837-386ec00ebd04" />



## 🛠️ Tecnologías Utilizadas

*   **Framework:** Flutter
*   **Lenguaje:** Dart
*   **IDE:** Visual Studio Code
*   **Sistema de construcción:** Gradle (Android) / Xcode (iOS)
*   **Versión Flutter SDK:** (Puedes especificar la versión que usaste, por ejemplo, `3.16.5`)
*   **Plataformas:** Android, iOS (y potencialmente Web, Desktop si se habilita)

## ⚙️ Cómo Ejecutar el Proyecto

Para clonar y ejecutar este proyecto Flutter en tu máquina local, sigue estos pasos:

1.  **Asegúrate de tener Flutter SDK instalado y configurado.**
    Puedes seguir la guía oficial de instalación de Flutter: [flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install)

2.  **Clona el repositorio:**
    ```bash
    git clone https://github.com/tu-usuario/practica1_flutter.git
    cd practica1_flutter
    ```

3.  **Obtén las dependencias:**
    ```bash
    flutter pub get
    ```

4.  **Selecciona un dispositivo o emulador:**
    *   Conecta un dispositivo Android/iOS físico o inicia un emulador/simulador.
    *   Verifica los dispositivos disponibles:
        ```bash
        flutter devices
        ```
    *   Selecciona tu dispositivo en VS Code (barra de estado inferior derecha o `Ctrl+Shift+P` -> `Flutter: Select Device`).

5.  **Ejecuta la aplicación:**
    ```bash
    flutter run
    ```
    Alternativamente, puedes usar el botón "Run" (triángulo verde) en la barra de herramientas de depuración de VS Code.


