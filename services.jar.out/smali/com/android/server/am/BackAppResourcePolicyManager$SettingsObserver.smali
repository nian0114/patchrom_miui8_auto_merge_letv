.class final Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BackAppResourcePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BackAppResourcePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BackAppResourcePolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BackAppResourcePolicyManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    .line 500
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 501
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    iget-object v1, v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->handleSettingsChangedLocked()V
    invoke-static {v0}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$000(Lcom/android/server/am/BackAppResourcePolicyManager;)V

    .line 507
    monitor-exit v1

    .line 508
    return-void

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
