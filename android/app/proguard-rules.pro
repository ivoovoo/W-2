# Flutter-specific rules
-keep class io.flutter.** { *; }
-keep class com.example.social_network.** { *; }

# Для исключения ошибок R8
-dontwarn android.support.**
-dontwarn org.jetbrains.annotations.**
-dontwarn javax.annotation.**

# Keep Play Core Split Install classes
-keep class com.google.android.play.core.splitinstall.** { *; }
-keep class com.google.android.play.core.splitcompat.** { *; }
-keep class com.google.android.play.core.tasks.** { *; }
-keep class com.google.android.play.core.splitinstall.SplitInstallManager { *; }
-keep class com.google.android.play.core.splitinstall.SplitInstallSessionState { *; }
-keep class com.google.android.play.core.splitinstall.SplitInstallRequest { *; }
-keep class com.google.android.play.core.splitinstall.SplitInstallException { *; }
