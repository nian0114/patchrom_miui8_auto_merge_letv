.class Lcom/android/server/policy/PhoneWindowManager$SettingsObserverForLetvMotionKey;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserverForLetvMotionKey"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 8987
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SettingsObserverForLetvMotionKey;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 8988
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8989
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 8994
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$SettingsObserverForLetvMotionKey;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8995
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "leui_wake_device_behavior"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 8999
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$SettingsObserverForLetvMotionKey;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->updateMotionSettings()V

    .line 9000
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 9003
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SettingsObserverForLetvMotionKey;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->updateMotionSettings()V

    .line 9004
    return-void
.end method
