.class public final Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MPhoneStateIntentReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MPhoneStatIntentReceiver"

.field private static final NOTIF_PHONE:I = 0x1

.field private static final NOTIF_SERVICE:I = 0x2

.field private static final NOTIF_SIGNAL:I = 0x4


# instance fields
.field private mAsuEventWhat:I

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPhoneStateEventWhat:I

.field mServiceState:Landroid/telephony/ServiceState;

.field private mServiceStateEventWhat:I

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSubId:I

.field private mTarget:Landroid/os/Handler;

.field private mWants:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 53
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    .line 54
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->setContext(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p0, p2}, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->setTarget(Landroid/os/Handler;)V

    .line 74
    invoke-virtual {p0, p3}, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->setSubId(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public getNotifyPhoneCallState()Z
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotifyServiceState()Z
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotifySignalStrength()Z
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "client must call notifyPhoneCallState(int)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "client must call notifyServiceState(int)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getSignalStrengthDbm()I
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "client must call notifySignalStrength(int)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v0

    return v0
.end method

.method public getSignalStrengthLevelAsu()I
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "client must call notifySignalStrength(int)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v0

    return v0
.end method

.method public notifyPhoneCallState(I)V
    .locals 2
    .param p1, "eventWhat"    # I

    .prologue
    .line 135
    iget v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mWants:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mWants:I

    .line 136
    iput p1, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mPhoneStateEventWhat:I

    .line 137
    iget-object v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public notifyServiceState(I)V
    .locals 2
    .param p1, "eventWhat"    # I

    .prologue
    .line 145
    iget v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mWants:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mWants:I

    .line 146
    iput p1, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mServiceStateEventWhat:I

    .line 147
    iget-object v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public notifySignalStrength(I)V
    .locals 2
    .param p1, "eventWhat"    # I

    .prologue
    .line 155
    iget v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mWants:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mWants:I

    .line 156
    iput p1, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mAsuEventWhat:I

    .line 157
    iget-object v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIG_STR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "action":Ljava/lang/String;
    const-string v7, "subscription"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 176
    .local v6, "subId":I
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    .line 177
    .local v2, "hasCard1":Z
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    .line 178
    .local v3, "hasCard2":Z
    const-string v7, "MPhoneStatIntentReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceiveIntent: action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", hasCard1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", hasCard2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", subId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mSubId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mSubId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-nez v2, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    iget v7, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mSubId:I

    if-eq v6, v7, :cond_2

    .line 181
    const-string v7, "MPhoneStatIntentReceiver"

    const-string v8, "onReceive: subId not match return !! "

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    :try_start_0
    const-string v7, "android.intent.action.SIG_STR"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;

    move-result-object v7

    iput-object v7, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 188
    iget-object v7, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->getNotifySignalStrength()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 189
    iget-object v7, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    iget v8, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mAsuEventWhat:I

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 190
    .local v4, "message":Landroid/os/Message;
    iget-object v7, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    .end local v4    # "message":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 214
    .local v1, "ex":Ljava/lang/Exception;
    const-string v7, "MPhoneStatIntentReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PhoneStateIntentRecv] caught "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    const-string v7, "android.intent.action.PHONE_STATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 195
    const-string v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, "phoneState":Ljava/lang/String;
    const-class v7, Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {v7, v5}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v7, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 199
    iget-object v7, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->getNotifyPhoneCallState()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 200
    iget-object v7, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    iget v8, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mPhoneStateEventWhat:I

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 202
    .restart local v4    # "message":Landroid/os/Message;
    iget-object v7, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 204
    .end local v4    # "message":Landroid/os/Message;
    .end local v5    # "phoneState":Ljava/lang/String;
    :cond_4
    const-string v7, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 205
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v7

    iput-object v7, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    .line 207
    iget-object v7, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->getNotifyServiceState()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 208
    iget-object v7, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    iget v8, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mServiceStateEventWhat:I

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 210
    .restart local v4    # "message":Landroid/os/Message;
    iget-object v7, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public registerIntent()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method public setSubId(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 86
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mSubId:I

    .line 87
    return-void
.end method

.method public setTarget(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method public unregisterIntent()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/letv/leui/telephony/MPhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    return-void
.end method
