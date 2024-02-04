# Aplikasi Smart Parking

![Clean Architecture](https://github.com/fauzan2720/smart-parking/assets/74108522/179fd83e-9bb6-4100-8ed9-38621519a363)

Aplikasi Flutter untuk Smart Parking, dibangun dengan clean architecture.

## Instalasi

1. Clone repository:
    ```bash
    git clone https://github.com/fauzan2720/smart-parking.git
    ```
2. Pindah ke direktori proyek:
    ```bash
    cd smart-parking
    ```
3. Pasang dependensi:
    ```bash
    flutter pub get
    ```
4. Generate code:
    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```
5. Jalankan aplikasi:
    ```bash
    flutter run
    ```

## Clean Architecture

Aplikasi ini dibangun menggunakan pola desain Clean Architecture. Arsitektur ini terbagi menjadi tiga lapisan:
- **Domain Layer**: Mengandung logika bisnis dan entitas.
- **Data Layer**: Menangani pengambilan data dari berbagai sumber (misalnya, API, basis data lokal).
- **Presentation Layer**: Mengelola antarmuka pengguna dan berinteraksi dengan lapisan domain.

## Struktur Folder

```
├─ lib
     ├─ core
     └─ features
        ├─ parking
        │  ├─ core
        │  │  ├─ bloc_providers
        │  │  └─ dependency
        │  ├─ data
        │  │  ├─ datasources
        │  │  ├─ models
        │  │  └─ repositories
        │  ├─ domain
        │  │  ├─ models
        │  │  └─ repositories
        │  └─ presentation
        │     ├─ managers
        │     ├─ pages
        │     └─ widgets
        └─ other_feature…
```

- **core**: Fungsionalitas umum dan utilitas yang digunakan di seluruh aplikasi.
- **features**: Fitur-fitur individu dari aplikasi, masing-masing mengikuti struktur clean architecture.

## Output

![recorder](https://github.com/fauzan2720/smart-parking/assets/74108522/38529ad6-2ad9-4aa1-95d9-1497405d7c31)
