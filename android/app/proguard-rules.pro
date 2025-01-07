# Keep SplitCompatApplication
-keep class com.google.android.play.core.splitcompat.SplitCompatApplication { *; }

# Keep SplitInstallManager and related classes
-keep class com.google.android.play.core.splitinstall.** { *; }

# Keep OnSuccessListener and OnFailureListener
-keep class com.google.android.play.core.tasks.OnSuccessListener { *; }
-keep class com.google.android.play.core.tasks.OnFailureListener { *; }

# Keep Task class
-keep class com.google.android.play.core.tasks.Task { *; }

# Keep SplitInstallSessionState
-keep class com.google.android.play.core.splitinstall.SplitInstallSessionState { *; }
