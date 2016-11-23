.class Lcom/android/server/am/BgGPSResourcePolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "BackAppResourcePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BgGPSResourcePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BgGPSResourcePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/BgGPSResourcePolicy;)V
    .locals 0

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/android/server/am/BgGPSResourcePolicy$1;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 1162
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-nez v3, :cond_1

    .line 1163
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$1;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$400(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/BgGPSResourcePolicy$1;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1800(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1164
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_0

    const-string v3, "BgGPSResourcePolicy"

    const-string v4, "LIMIT_APP: not open feature,unRegisterReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$1;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # invokes: Lcom/android/server/am/BgGPSResourcePolicy;->getCurrentGpsState()I
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$000(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v1

    .line 1169
    .local v1, "currState":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1170
    .local v0, "action":Ljava/lang/String;
    if-eqz v1, :cond_2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$1;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mRestoreGpsState:I
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$100(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v3

    if-gtz v3, :cond_3

    .line 1173
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_0

    const-string v3, "BgGPSResourcePolicy"

    const-string v4, "LIMIT_APP: gps off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1178
    :cond_3
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1179
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$1;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$600(Lcom/android/server/am/BgGPSResourcePolicy;)Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1180
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1181
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$1;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$600(Lcom/android/server/am/BgGPSResourcePolicy;)Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1182
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_4

    const-string v3, "BgGPSResourcePolicy"

    const-string v4, "LIMIT_APP: stop watching gps uri,reason 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$1;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$400(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/BgGPSResourcePolicy$1;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mBgGPSSettingsObserver:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;
    invoke-static {v4}, Lcom/android/server/am/BgGPSResourcePolicy;->access$300(Lcom/android/server/am/BgGPSResourcePolicy;)Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1184
    .end local v2    # "msg":Landroid/os/Message;
    :cond_5
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1185
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$1;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # setter for: Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingTimes:I
    invoke-static {v3, v7}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1102(Lcom/android/server/am/BgGPSResourcePolicy;I)I

    .line 1186
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$1;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # setter for: Lcom/android/server/am/BgGPSResourcePolicy;->mSampleStationaryTime:I
    invoke-static {v3, v7}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1202(Lcom/android/server/am/BgGPSResourcePolicy;I)I

    .line 1187
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$1;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # invokes: Lcom/android/server/am/BgGPSResourcePolicy;->scduleNextSample()V
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1300(Lcom/android/server/am/BgGPSResourcePolicy;)V

    .line 1188
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_6

    const-string v3, "BgGPSResourcePolicy"

    const-string v4, "LIMIT_APP: start watching gps uri"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$1;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$400(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_providers_allowed"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/BgGPSResourcePolicy$1;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mBgGPSSettingsObserver:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;
    invoke-static {v5}, Lcom/android/server/am/BgGPSResourcePolicy;->access$300(Lcom/android/server/am/BgGPSResourcePolicy;)Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto/16 :goto_0
.end method
