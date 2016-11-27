.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 320
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 321
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 322
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 323
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    invoke-static {}, Lmiui/patchrom/ClassHook;->initServerHook()V

    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    return-void
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 303
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 306
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 309
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 310
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 317
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 312
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 298
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    return-void
.end method

.method private run()V
    .locals 9

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 192
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 204
    :cond_0
    const-string v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 207
    .local v7, "languageTag":Ljava/lang/String;
    const-string v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "persist.sys.language"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v0, "persist.sys.country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "persist.sys.localevar"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 224
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 229
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 230
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 239
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 243
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 247
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 251
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 254
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 257
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 259
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 260
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 263
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 267
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 270
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 273
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 274
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 278
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 279
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 280
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 294
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :catch_0
    move-exception v6

    .line 282
    .local v6, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 336
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/Installer;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 339
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 341
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 342
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 348
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService;

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 352
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 355
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/lights/LightsService;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 359
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayManagerService;

    iput-object v3, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 362
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 365
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "cryptState":Ljava/lang/String;
    const-string v3, "trigger_restart_min_framework"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 367
    const-string v3, "SystemServer"

    const-string v5, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 374
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    const-string v3, "SystemServer"

    const-string v5, "Regionalization Service"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v2, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v2}, Lcom/android/server/os/RegionalizationService;-><init>()V

    .line 377
    .local v2, "regionalizationService":Lcom/android/server/os/RegionalizationService;
    const-string v3, "regionalization"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 381
    .end local v2    # "regionalizationService":Lcom/android/server/os/RegionalizationService;
    :cond_1
    const-string v3, "SystemServer"

    const-string v5, "Package Manager"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v5, v1, v3, v4}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 384
    iget-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 385
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 387
    const-string v3, "SystemServer"

    const-string v4, "User Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v3, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 391
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 394
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 398
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 399
    return-void

    .line 369
    :cond_2
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    const-string v3, "SystemServer"

    const-string v5, "Device encrypted - only parsing core apps"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 382
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 409
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 410
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 413
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 416
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 417
    return-void
.end method

.method private startOtherServices()V
    .locals 107

    .prologue
    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 425
    .local v3, "context":Landroid/content/Context;
    const/16 v31, 0x0

    .line 426
    .local v31, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v50, 0x0

    .line 427
    .local v50, "contentService":Lcom/android/server/content/ContentService;
    const/16 v100, 0x0

    .line 428
    .local v100, "vibrator":Lcom/android/server/VibratorService;
    const/16 v33, 0x0

    .line 429
    .local v33, "alarm":Landroid/app/IAlarmManager;
    const/16 v77, 0x0

    .line 430
    .local v77, "mountService":Landroid/os/storage/IMountService;
    const/4 v7, 0x0

    .line 431
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 432
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v80, 0x0

    .line 433
    .local v80, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v46, 0x0

    .line 434
    .local v46, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v81, 0x0

    .line 435
    .local v81, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v92, 0x0

    .line 436
    .local v92, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v106, 0x0

    .line 437
    .local v106, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v99, 0x0

    .line 438
    .local v99, "usb":Lcom/android/server/usb/UsbService;
    const/16 v90, 0x0

    .line 439
    .local v90, "serial":Lcom/android/server/SerialService;
    const/16 v84, 0x0

    .line 440
    .local v84, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v43, 0x0

    .line 441
    .local v43, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v34, 0x0

    .line 442
    .local v34, "alipayCaManager":Lcom/android/server/app/AlipayCaService;
    const/16 v66, 0x0

    .line 443
    .local v66, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v95, 0x0

    .line 444
    .local v95, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v48, 0x0

    .line 445
    .local v48, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v38, 0x0

    .line 446
    .local v38, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v76, 0x0

    .line 447
    .local v76, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v62, 0x0

    .line 448
    .local v62, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v40, 0x0

    .line 450
    .local v40, "cameraService":Lcom/android/server/camera/CameraService;
    const/16 v78, 0x0

    .line 453
    .local v78, "mute":Lcom/android/server/MuteKeyObserver;
    const-string v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    .line 454
    .local v59, "disableStorage":Z
    const-string v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    .line 455
    .local v54, "disableBluetooth":Z
    const-string v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 456
    .local v55, "disableLocation":Z
    const-string v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v60

    .line 457
    .local v60, "disableSystemUI":Z
    const-string v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 458
    .local v58, "disableNonCoreServices":Z
    const-string v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 459
    .local v56, "disableNetwork":Z
    const-string v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 460
    .local v57, "disableNetworkTime":Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v68

    .line 461
    .local v68, "isEmulator":Z
    const-string v4, "config.disable_atlas"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 464
    .local v53, "disableAtlas":Z
    :try_start_0
    const-string v4, "SystemServer"

    const-string v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 467
    const-string v4, "SystemServer"

    const-string v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 472
    const-string v4, "SystemServer"

    const-string v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v96, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v96

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_44

    .line 474
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v96, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v4, "telephony.registry"

    move-object/from16 v0, v96

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 476
    const-string v4, "SystemServer"

    const-string v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v63, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v63

    invoke-direct {v0, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_45

    .line 479
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v63, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 481
    const-string v4, "SystemServer"

    const-string v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 487
    :try_start_3
    const-string v4, "SystemServer"

    const-string v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v32, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 489
    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v32, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_4
    const-string v4, "account"

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4a
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_46

    move-object/from16 v31, v32

    .line 494
    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_5
    const-string v4, "SystemServer"

    const-string v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v50

    .line 498
    const-string v4, "SystemServer"

    const-string v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 501
    const-string v4, "SystemServer"

    const-string v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v101, Lcom/android/server/VibratorService;

    move-object/from16 v0, v101

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 503
    .end local v100    # "vibrator":Lcom/android/server/VibratorService;
    .local v101, "vibrator":Lcom/android/server/VibratorService;
    :try_start_6
    const-string v4, "vibrator"

    move-object/from16 v0, v101

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 505
    const-string v4, "SystemServer"

    const-string v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v49, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v49

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_47

    .line 507
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v49, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_7
    const-string v4, "consumer_ir"

    move-object/from16 v0, v49

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 510
    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v33

    .line 513
    const-string v4, "SystemServer"

    const-string v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v105

    .line 515
    .local v105, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v105

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 517
    const-string v4, "ro.product.board"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "msm8996"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 518
    const-string v4, "SystemServer"

    const-string v5, "AlipayCa Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    new-instance v35, Lcom/android/server/app/AlipayCaService;

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Lcom/android/server/app/AlipayCaService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_48

    .line 520
    .end local v34    # "alipayCaManager":Lcom/android/server/app/AlipayCaService;
    .local v35, "alipayCaManager":Lcom/android/server/app/AlipayCaService;
    :try_start_8
    const-string v4, "alipay_ca"

    move-object/from16 v0, v35

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_49

    move-object/from16 v34, v35

    .line 523
    .end local v35    # "alipayCaManager":Lcom/android/server/app/AlipayCaService;
    .restart local v34    # "alipayCaManager":Lcom/android/server/app/AlipayCaService;
    :cond_0
    :try_start_9
    const-string v4, "SystemServer"

    const-string v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v67, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v67

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_48

    .line 526
    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v67, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_a
    const-string v4, "SystemServer"

    const-string v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_28

    const/4 v4, 0x1

    move v5, v4

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v4, :cond_29

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v67

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v106

    .line 530
    const-string v4, "window"

    move-object/from16 v0, v106

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 531
    const-string v4, "input"

    move-object/from16 v0, v67

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v106

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 535
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 536
    invoke-virtual/range {v67 .. v67}, Lcom/android/server/input/InputManagerService;->start()V

    .line 539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 544
    if-eqz v68, :cond_2a

    .line 545
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    :goto_4
    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v48, v49

    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v66, v67

    .end local v67    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v100, v101

    .line 562
    .end local v101    # "vibrator":Lcom/android/server/VibratorService;
    .end local v105    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v100    # "vibrator":Lcom/android/server/VibratorService;
    :goto_5
    const/16 v93, 0x0

    .line 563
    .local v93, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v86, 0x0

    .line 564
    .local v86, "notification":Landroid/app/INotificationManager;
    const/16 v64, 0x0

    .line 565
    .local v64, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v103, 0x0

    .line 566
    .local v103, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v69, 0x0

    .line 567
    .local v69, "location":Lcom/android/server/LocationManagerService;
    const/16 v51, 0x0

    .line 568
    .local v51, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v97, 0x0

    .line 569
    .local v97, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v71, 0x0

    .line 570
    .local v71, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v36, 0x0

    .line 571
    .local v36, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v73, 0x0

    .line 574
    .local v73, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v87, 0x0

    .line 578
    .local v87, "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    const/16 v41, 0x0

    .line 582
    .local v41, "colorMode":Lcom/letv/leui/server/ColorModeService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 584
    :try_start_b
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v65, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-direct {v0, v3, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 586
    .end local v64    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v65, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_c
    const-string v4, "input_method"

    move-object/from16 v0, v65

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_43

    move-object/from16 v64, v65

    .line 592
    .end local v65    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v64    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_6
    :try_start_d
    const-string v4, "SystemServer"

    const-string v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    .line 601
    :cond_1
    :goto_7
    :try_start_e
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 606
    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 607
    if-nez v59, :cond_2

    const-string v4, "0"

    const-string v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 614
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 615
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    move-result-object v77

    .line 625
    :cond_2
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 628
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    .line 634
    :goto_a
    :try_start_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1040388

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_42

    .line 643
    :goto_b
    :try_start_12
    const-string v4, "SystemServer"

    const-string v5, "PhoneBindService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-instance v88, Lcom/android/server/phonebind/PhoneBindService;

    move-object/from16 v0, v88

    invoke-direct {v0, v3}, Lcom/android/server/phonebind/PhoneBindService;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    .line 645
    .end local v87    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    .local v88, "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    :try_start_13
    const-string v4, "leuiphonebind"

    move-object/from16 v0, v88

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_41

    move-object/from16 v87, v88

    .line 653
    .end local v88    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    .restart local v87    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    :goto_c
    :try_start_14
    const-string v4, "SystemServer"

    const-string v5, "ColorMode"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    new-instance v42, Lcom/letv/leui/server/ColorModeService;

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Lcom/letv/leui/server/ColorModeService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9

    .line 655
    .end local v41    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    .local v42, "colorMode":Lcom/letv/leui/server/ColorModeService;
    :try_start_15
    const-string v4, "leuicolormode"

    move-object/from16 v0, v42

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_40

    move-object/from16 v41, v42

    .line 661
    .end local v42    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    .restart local v41    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    :goto_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_30

    .line 662
    if-nez v58, :cond_4

    .line 664
    :try_start_16
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance v72, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v72

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a

    .line 666
    .end local v71    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v72, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_17
    const-string v4, "lock_settings"

    move-object/from16 v0, v72

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_3f

    move-object/from16 v71, v72

    .line 671
    .end local v72    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v71    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_e
    const-string v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 672
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 675
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 679
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 682
    :cond_4
    if-nez v60, :cond_5

    .line 684
    :try_start_18
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    new-instance v94, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v94

    move-object/from16 v1, v106

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_b

    .line 686
    .end local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v94, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_19
    const-string v4, "statusbar"

    move-object/from16 v0, v94

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_3e

    move-object/from16 v93, v94

    .line 692
    .end local v94    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_5
    :goto_f
    if-nez v58, :cond_6

    .line 694
    :try_start_1a
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_c

    .line 702
    :cond_6
    :goto_10
    if-nez v56, :cond_7

    .line 704
    :try_start_1b
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .line 706
    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_d

    .line 712
    :cond_7
    :goto_11
    if-nez v58, :cond_8

    .line 714
    :try_start_1c
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v98, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v98

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_e

    .line 716
    .end local v97    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v98, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_1d
    const-string v4, "textservices"

    move-object/from16 v0, v98

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_3d

    move-object/from16 v97, v98

    .line 722
    .end local v98    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v97    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_8
    :goto_12
    if-nez v56, :cond_2f

    .line 724
    :try_start_1e
    const-string v4, "SystemServer"

    const-string v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    new-instance v82, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v82

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_f

    .line 726
    .end local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v82, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1f
    const-string v4, "network_score"

    move-object/from16 v0, v82

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_3c

    move-object/from16 v81, v82

    .line 732
    .end local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_13
    :try_start_20
    const-string v4, "SystemServer"

    const-string v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v83, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v83

    move-object/from16 v1, v33

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_10

    .line 734
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v83, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_21
    const-string v4, "netstats"

    move-object/from16 v0, v83

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_3b

    move-object/from16 v6, v83

    .line 740
    .end local v83    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_14
    :try_start_22
    const-string v4, "SystemServer"

    const-string v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_11

    .line 745
    .end local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_23
    const-string v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_3a

    .line 750
    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 757
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 759
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 763
    :cond_a
    :try_start_24
    const-string v4, "SystemServer"

    const-string v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v47, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v47

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_12

    .line 766
    .end local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v47, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_25
    const-string v4, "connectivity"

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 767
    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 768
    move-object/from16 v0, v47

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_39

    move-object/from16 v46, v47

    .line 774
    .end local v47    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_16
    :try_start_26
    const-string v4, "SystemServer"

    const-string v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v92

    .line 776
    const-string v4, "servicediscovery"

    move-object/from16 v0, v92

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_13

    .line 783
    :goto_17
    if-nez v58, :cond_b

    .line 785
    :try_start_27
    const-string v4, "SystemServer"

    const-string v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const-string v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_14

    .line 798
    :cond_b
    :goto_18
    if-eqz v77, :cond_c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_c

    .line 800
    :try_start_28
    invoke-interface/range {v77 .. v77}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_30

    .line 806
    :cond_c
    :goto_19
    if-eqz v31, :cond_d

    .line 807
    :try_start_29
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_15

    .line 813
    :cond_d
    :goto_1a
    if-eqz v50, :cond_e

    .line 814
    :try_start_2a
    invoke-virtual/range {v50 .. v50}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_16

    .line 819
    :cond_e
    :goto_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 820
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v86

    .line 822
    move-object/from16 v0, v86

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 826
    if-nez v55, :cond_f

    .line 828
    :try_start_2b
    const-string v4, "SystemServer"

    const-string v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v70, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v70

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_17

    .line 830
    .end local v69    # "location":Lcom/android/server/LocationManagerService;
    .local v70, "location":Lcom/android/server/LocationManagerService;
    :try_start_2c
    const-string v4, "location"

    move-object/from16 v0, v70

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_38

    move-object/from16 v69, v70

    .line 836
    .end local v70    # "location":Lcom/android/server/LocationManagerService;
    .restart local v69    # "location":Lcom/android/server/LocationManagerService;
    :goto_1c
    :try_start_2d
    const-string v4, "SystemServer"

    const-string v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v52, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v52

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_18

    .line 838
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v52, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_2e
    const-string v4, "country_detector"

    move-object/from16 v0, v52

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_37

    move-object/from16 v51, v52

    .line 844
    .end local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_f
    :goto_1d
    if-nez v58, :cond_10

    .line 846
    :try_start_2f
    const-string v4, "SystemServer"

    const-string v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v4, "search"

    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_19

    .line 855
    :cond_10
    :goto_1e
    :try_start_30
    const-string v4, "SystemServer"

    const-string v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const-string v4, "dropbox"

    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1a

    .line 862
    :goto_1f
    if-nez v58, :cond_11

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 865
    :try_start_31
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    new-instance v104, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v104

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1b

    .line 867
    .end local v103    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v104, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_32
    const-string v4, "wallpaper"

    move-object/from16 v0, v104

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_36

    move-object/from16 v103, v104

    .line 874
    .end local v104    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v103    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_11
    :goto_20
    :try_start_33
    const-string v4, "SystemServer"

    const-string v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-instance v39, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1c

    .line 876
    .end local v38    # "audioService":Lcom/android/server/audio/AudioService;
    .local v39, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_34
    const-string v4, "audio"

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_35

    move-object/from16 v38, v39

    .line 881
    .end local v39    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v38    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_21
    if-nez v58, :cond_12

    .line 882
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 886
    :cond_12
    :try_start_35
    const-string v4, "SystemServer"

    const-string v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v66

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v66

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1d

    .line 894
    :goto_22
    if-nez v58, :cond_16

    .line 895
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 900
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 904
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 908
    :cond_15
    :try_start_36
    const-string v4, "SystemServer"

    const-string v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    new-instance v91, Lcom/android/server/SerialService;

    move-object/from16 v0, v91

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1e

    .line 911
    .end local v90    # "serial":Lcom/android/server/SerialService;
    .local v91, "serial":Lcom/android/server/SerialService;
    :try_start_37
    const-string v4, "serial"

    move-object/from16 v0, v91

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_34

    move-object/from16 v90, v91

    .line 918
    .end local v91    # "serial":Lcom/android/server/SerialService;
    .restart local v90    # "serial":Lcom/android/server/SerialService;
    :cond_16
    :goto_23
    :try_start_38
    const-string v4, "SystemServer"

    const-string v5, "Mute Observer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    new-instance v79, Lcom/android/server/MuteKeyObserver;

    move-object/from16 v0, v79

    invoke-direct {v0, v3}, Lcom/android/server/MuteKeyObserver;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1f

    .end local v78    # "mute":Lcom/android/server/MuteKeyObserver;
    .local v79, "mute":Lcom/android/server/MuteKeyObserver;
    move-object/from16 v78, v79

    .line 924
    .end local v79    # "mute":Lcom/android/server/MuteKeyObserver;
    .restart local v78    # "mute":Lcom/android/server/MuteKeyObserver;
    :goto_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 926
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 928
    if-nez v58, :cond_1a

    .line 929
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 930
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 933
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 934
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 937
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 941
    :cond_19
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 942
    const-string v4, "SystemServer"

    const-string v5, "Gesture Launcher Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 948
    :cond_1a
    :try_start_39
    const-string v4, "SystemServer"

    const-string v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const-string v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_20

    .line 959
    :goto_25
    :try_start_3a
    const-string v4, "SystemServer"

    const-string v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const-string v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_21

    .line 966
    :goto_26
    if-nez v56, :cond_1b

    if-nez v57, :cond_1b

    .line 968
    :try_start_3b
    const-string v4, "SystemServer"

    const-string v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    new-instance v85, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v85

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_22

    .end local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v85, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v84, v85

    .line 976
    .end local v85    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v84    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1b
    :goto_27
    :try_start_3c
    const-string v4, "SystemServer"

    const-string v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    new-instance v44, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_23

    .line 978
    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v44, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_3d
    const-string v4, "commontime_management"

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_33

    move-object/from16 v43, v44

    .line 983
    .end local v44    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_28
    if-nez v56, :cond_1c

    .line 985
    :try_start_3e
    const-string v4, "SystemServer"

    const-string v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    new-instance v4, Lcom/android/server/CertBlacklister;

    invoke-direct {v4, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_24

    .line 992
    :cond_1c
    :goto_29
    if-nez v58, :cond_1d

    .line 994
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 997
    :cond_1d
    if-nez v58, :cond_1e

    if-nez v53, :cond_1e

    .line 999
    :try_start_3f
    const-string v4, "SystemServer"

    const-string v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    new-instance v37, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_25

    .line 1001
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v37, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_40
    const-string v4, "assetatlas"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_32

    move-object/from16 v36, v37

    .line 1007
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1e
    :goto_2a
    if-nez v58, :cond_1f

    .line 1008
    const-string v4, "graphicsstats"

    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1012
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1013
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1016
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1018
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1020
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1021
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1024
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1028
    :cond_22
    if-nez v58, :cond_23

    .line 1030
    :try_start_41
    const-string v4, "SystemServer"

    const-string v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    new-instance v74, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v74

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_26

    .line 1032
    .end local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v74, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_42
    const-string v4, "media_router"

    move-object/from16 v0, v74

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_31

    move-object/from16 v73, v74

    .line 1037
    .end local v74    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1042
    :try_start_43
    const-string v4, "SystemServer"

    const-string v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_27

    .line 1050
    :cond_23
    :goto_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1053
    :goto_2d
    if-nez v58, :cond_24

    .line 1054
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1059
    :cond_24
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v89

    .line 1060
    .local v89, "safeMode":Z
    if-eqz v89, :cond_2e

    .line 1061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1063
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1070
    :goto_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v76

    .end local v76    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v76, Lcom/android/server/MmsServiceBroker;

    .line 1075
    .restart local v76    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_44
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_28

    .line 1082
    :goto_2f
    :try_start_45
    invoke-virtual/range {v87 .. v87}, Lcom/android/server/phonebind/PhoneBindService;->systemReady()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_29

    .line 1088
    :goto_30
    if-eqz v71, :cond_25

    .line 1090
    :try_start_46
    invoke-virtual/range {v71 .. v71}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2a

    .line 1097
    :cond_25
    :goto_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1102
    :try_start_47
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2b

    .line 1107
    :goto_32
    if-eqz v89, :cond_26

    .line 1108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1114
    :cond_26
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v45

    .line 1115
    .local v45, "config":Landroid/content/res/Configuration;
    new-instance v75, Landroid/util/DisplayMetrics;

    invoke-direct/range {v75 .. v75}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1116
    .local v75, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/view/WindowManager;

    .line 1117
    .local v102, "w":Landroid/view/WindowManager;
    invoke-interface/range {v102 .. v102}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1118
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v45

    move-object/from16 v1, v75

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1122
    :try_start_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2c

    .line 1128
    :goto_33
    :try_start_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2d

    .line 1135
    :goto_34
    :try_start_4a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v89

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2e

    .line 1141
    :goto_35
    move-object v12, v7

    .line 1142
    .local v12, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v13, v6

    .line 1143
    .local v13, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v14, v2

    .line 1144
    .local v14, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v15, v46

    .line 1145
    .local v15, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v11, v81

    .line 1146
    .local v11, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v18, v103

    .line 1147
    .local v18, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v19, v64

    .line 1148
    .local v19, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v21, v69

    .line 1149
    .local v21, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v22, v51

    .line 1150
    .local v22, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v23, v84

    .line 1151
    .local v23, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v24, v43

    .line 1152
    .local v24, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v25, v97

    .line 1153
    .local v25, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v20, v93

    .line 1154
    .local v20, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v26, v36

    .line 1155
    .local v26, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v27, v66

    .line 1156
    .local v27, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v28, v95

    .line 1157
    .local v28, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v29, v73

    .line 1158
    .local v29, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v16, v38

    .line 1159
    .local v16, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v30, v76

    .line 1161
    .local v30, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v17, v78

    .line 1168
    .local v17, "muteF":Lcom/android/server/MuteKeyObserver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-direct/range {v8 .. v30}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/MuteKeyObserver;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1302
    :try_start_4b
    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/server/ColorModeService;->systemReady()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2f

    .line 1307
    :goto_36
    return-void

    .line 490
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v12    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v13    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v14    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v16    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v17    # "muteF":Lcom/android/server/MuteKeyObserver;
    .end local v18    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v19    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v20    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v21    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v22    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v23    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v24    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v25    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v26    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v27    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v28    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v29    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v30    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v41    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    .end local v45    # "config":Landroid/content/res/Configuration;
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v64    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v69    # "location":Lcom/android/server/LocationManagerService;
    .end local v71    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v75    # "metrics":Landroid/util/DisplayMetrics;
    .end local v86    # "notification":Landroid/app/INotificationManager;
    .end local v87    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    .end local v89    # "safeMode":Z
    .end local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v97    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v102    # "w":Landroid/view/WindowManager;
    .end local v103    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v61

    .line 491
    .local v61, "e":Ljava/lang/Throwable;
    :goto_37
    :try_start_4c
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Account Manager"

    move-object/from16 v0, v61

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_4c} :catch_1

    goto/16 :goto_0

    .line 557
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v61

    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v95, v96

    .line 558
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v61, "e":Ljava/lang/RuntimeException;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_38
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    move-object/from16 v0, v61

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 495
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_27
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 527
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v100    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v67    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v101    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v105    # "watchdog":Lcom/android/server/Watchdog;
    :cond_28
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_2

    :cond_29
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 546
    :cond_2a
    :try_start_4d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2b

    .line 547
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 557
    :catch_2
    move-exception v61

    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v48, v49

    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v66, v67

    .end local v67    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v100, v101

    .end local v101    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v100    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_38

    .line 548
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v100    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v67    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2b
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 550
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 551
    :cond_2c
    if-eqz v54, :cond_2d

    .line 552
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 554
    :cond_2d
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_4d} :catch_2

    goto/16 :goto_4

    .line 587
    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v67    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v101    # "vibrator":Lcom/android/server/VibratorService;
    .end local v105    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v41    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v64    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v69    # "location":Lcom/android/server/LocationManagerService;
    .restart local v71    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v86    # "notification":Landroid/app/INotificationManager;
    .restart local v87    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    .restart local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v97    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v100    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v103    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v61

    .line 588
    .local v61, "e":Ljava/lang/Throwable;
    :goto_39
    const-string v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 595
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v61

    .line 596
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 602
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v61

    .line 603
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 617
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v61

    .line 618
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 629
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v61

    .line 630
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 646
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v61

    .line 647
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string v4, "starting phoneBind service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 656
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v61

    .line 657
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string v4, "starting colorMode service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 667
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v61

    .line 668
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 687
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v61

    .line 688
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 697
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v61

    .line 698
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 707
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v61

    .line 708
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 717
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v61

    .line 718
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 727
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v61

    .line 728
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 735
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v61

    .line 736
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 746
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v61

    move-object/from16 v2, v80

    .line 747
    .end local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 769
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v61

    .line 770
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 778
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v61

    .line 779
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 788
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v61

    .line 789
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 808
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v61

    .line 809
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 815
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v61

    .line 816
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 831
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v61

    .line 832
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 839
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v61

    .line 840
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 849
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v61

    .line 850
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 858
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v61

    .line 859
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 868
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v61

    .line 869
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 877
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v61

    .line 878
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 890
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v61

    .line 891
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 912
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v61

    .line 913
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_47
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SerialService"

    move-object/from16 v0, v61

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_23

    .line 921
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v61

    .line 922
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "starting MuteKeyObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 950
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v61

    .line 951
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 962
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v61

    .line 963
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 970
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v61

    .line 971
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 979
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v61

    .line 980
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_48
    const-string v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 987
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v61

    .line 988
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1002
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v61

    .line 1003
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_49
    const-string v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1033
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v61

    .line 1034
    .restart local v61    # "e":Ljava/lang/Throwable;
    :goto_4a
    const-string v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1044
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v61

    .line 1045
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1066
    .end local v61    # "e":Ljava/lang/Throwable;
    .restart local v89    # "safeMode":Z
    :cond_2e
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2e

    .line 1076
    :catch_28
    move-exception v61

    .line 1077
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1083
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v61

    .line 1084
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "making phone bind Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1091
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v61

    .line 1092
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1103
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v61

    .line 1104
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1123
    .end local v61    # "e":Ljava/lang/Throwable;
    .restart local v45    # "config":Landroid/content/res/Configuration;
    .restart local v75    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v102    # "w":Landroid/view/WindowManager;
    :catch_2c
    move-exception v61

    .line 1124
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1129
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v61

    .line 1130
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1136
    .end local v61    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v61

    .line 1137
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 1303
    .end local v61    # "e":Ljava/lang/Throwable;
    .restart local v11    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .restart local v12    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .restart local v13    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .restart local v14    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v15    # "connectivityF":Lcom/android/server/ConnectivityService;
    .restart local v16    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .restart local v17    # "muteF":Lcom/android/server/MuteKeyObserver;
    .restart local v18    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v19    # "immF":Lcom/android/server/InputMethodManagerService;
    .restart local v20    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v21    # "locationF":Lcom/android/server/LocationManagerService;
    .restart local v22    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .restart local v23    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v24    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .restart local v25    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .restart local v26    # "atlasF":Lcom/android/server/AssetAtlasService;
    .restart local v27    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .restart local v28    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .restart local v29    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .restart local v30    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    :catch_2f
    move-exception v61

    .line 1304
    .restart local v61    # "e":Ljava/lang/Throwable;
    const-string v4, "making color mode Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 801
    .end local v11    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v12    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v13    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v14    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v16    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v17    # "muteF":Lcom/android/server/MuteKeyObserver;
    .end local v18    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v19    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v20    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v21    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v22    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v23    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v24    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v25    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v26    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v27    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v28    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v29    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v30    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v45    # "config":Landroid/content/res/Configuration;
    .end local v61    # "e":Ljava/lang/Throwable;
    .end local v75    # "metrics":Landroid/util/DisplayMetrics;
    .end local v89    # "safeMode":Z
    .end local v102    # "w":Landroid/view/WindowManager;
    :catch_30
    move-exception v4

    goto/16 :goto_19

    .line 1033
    .end local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v74    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_31
    move-exception v61

    move-object/from16 v73, v74

    .end local v74    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_4a

    .line 1002
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_32
    move-exception v61

    move-object/from16 v36, v37

    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_49

    .line 979
    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v44    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_33
    move-exception v61

    move-object/from16 v43, v44

    .end local v44    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_48

    .line 912
    .end local v90    # "serial":Lcom/android/server/SerialService;
    .restart local v91    # "serial":Lcom/android/server/SerialService;
    :catch_34
    move-exception v61

    move-object/from16 v90, v91

    .end local v91    # "serial":Lcom/android/server/SerialService;
    .restart local v90    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_47

    .line 877
    .end local v38    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v39    # "audioService":Lcom/android/server/audio/AudioService;
    :catch_35
    move-exception v61

    move-object/from16 v38, v39

    .end local v39    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v38    # "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_46

    .line 868
    .end local v103    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v104    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_36
    move-exception v61

    move-object/from16 v103, v104

    .end local v104    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v103    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_45

    .line 839
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_37
    move-exception v61

    move-object/from16 v51, v52

    .end local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_44

    .line 831
    .end local v69    # "location":Lcom/android/server/LocationManagerService;
    .restart local v70    # "location":Lcom/android/server/LocationManagerService;
    :catch_38
    move-exception v61

    move-object/from16 v69, v70

    .end local v70    # "location":Lcom/android/server/LocationManagerService;
    .restart local v69    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_43

    .line 769
    .end local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v47    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_39
    move-exception v61

    move-object/from16 v46, v47

    .end local v47    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_42

    .line 746
    :catch_3a
    move-exception v61

    goto/16 :goto_41

    .line 735
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v83    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_3b
    move-exception v61

    move-object/from16 v6, v83

    .end local v83    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_40

    .line 727
    .end local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_3c
    move-exception v61

    move-object/from16 v81, v82

    .end local v82    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v81    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_3f

    .line 717
    .end local v97    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v98    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_3d
    move-exception v61

    move-object/from16 v97, v98

    .end local v98    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v97    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3e

    .line 687
    .end local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v94    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_3e
    move-exception v61

    move-object/from16 v93, v94

    .end local v94    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_3d

    .line 667
    .end local v71    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v72    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_3f
    move-exception v61

    move-object/from16 v71, v72

    .end local v72    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v71    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_3c

    .line 656
    .end local v41    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    .restart local v42    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    :catch_40
    move-exception v61

    move-object/from16 v41, v42

    .end local v42    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    .restart local v41    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    goto/16 :goto_3b

    .line 646
    .end local v87    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    .restart local v88    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    :catch_41
    move-exception v61

    move-object/from16 v87, v88

    .end local v88    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    .restart local v87    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    goto/16 :goto_3a

    .line 638
    :catch_42
    move-exception v4

    goto/16 :goto_b

    .line 587
    .end local v64    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v65    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_43
    move-exception v61

    move-object/from16 v64, v65

    .end local v65    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v64    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_39

    .line 557
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v41    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v64    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v69    # "location":Lcom/android/server/LocationManagerService;
    .end local v71    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v86    # "notification":Landroid/app/INotificationManager;
    .end local v87    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    .end local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v97    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v103    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_44
    move-exception v61

    goto/16 :goto_38

    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_45
    move-exception v61

    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_38

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_46
    move-exception v61

    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v31, v32

    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_38

    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v100    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "vibrator":Lcom/android/server/VibratorService;
    :catch_47
    move-exception v61

    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v100, v101

    .end local v101    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v100    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_38

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v100    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "vibrator":Lcom/android/server/VibratorService;
    :catch_48
    move-exception v61

    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v48, v49

    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v100, v101

    .end local v101    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v100    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_38

    .end local v34    # "alipayCaManager":Lcom/android/server/app/AlipayCaService;
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v100    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v35    # "alipayCaManager":Lcom/android/server/app/AlipayCaService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v105    # "watchdog":Lcom/android/server/Watchdog;
    :catch_49
    move-exception v61

    move-object/from16 v62, v63

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v48, v49

    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v95, v96

    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v34, v35

    .end local v35    # "alipayCaManager":Lcom/android/server/app/AlipayCaService;
    .restart local v34    # "alipayCaManager":Lcom/android/server/app/AlipayCaService;
    move-object/from16 v100, v101

    .end local v101    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v100    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_38

    .line 490
    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v105    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_4a
    move-exception v61

    move-object/from16 v31, v32

    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_37

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v96    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v41    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v62    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v64    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v69    # "location":Lcom/android/server/LocationManagerService;
    .restart local v71    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v86    # "notification":Landroid/app/INotificationManager;
    .restart local v87    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    .restart local v93    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v95    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v97    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v103    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_2f
    move-object/from16 v2, v80

    .end local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_17

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_30
    move-object/from16 v2, v80

    .end local v80    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2d
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1310
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1311
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1314
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1315
    return-void
.end method
