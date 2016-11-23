.class final Lcom/android/server/power/ButtonLightController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ButtonLightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ButtonLightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ButtonLightController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ButtonLightController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/server/power/ButtonLightController$SettingsObserver;->this$0:Lcom/android/server/power/ButtonLightController;

    .line 39
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 40
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/power/ButtonLightController$SettingsObserver;->this$0:Lcom/android/server/power/ButtonLightController;

    iget-object v1, v0, Lcom/android/server/power/ButtonLightController;->mService:Lcom/android/server/power/PowerManagerService;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ButtonLightController$SettingsObserver;->this$0:Lcom/android/server/power/ButtonLightController;

    # invokes: Lcom/android/server/power/ButtonLightController;->handleSettingsChangedLocked()V
    invoke-static {v0}, Lcom/android/server/power/ButtonLightController;->access$000(Lcom/android/server/power/ButtonLightController;)V

    .line 46
    monitor-exit v1

    .line 47
    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
