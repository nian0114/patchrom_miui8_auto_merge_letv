.class Lcom/android/server/LocationManagerService$MSiPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MSiPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/server/LocationManagerService$MSiPhoneStateListener;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LocationManagerService;
    .param p2, "x1"    # Lcom/android/server/LocationManagerService$1;

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$MSiPhoneStateListener;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 372
    iget-object v1, p0, Lcom/android/server/LocationManagerService$MSiPhoneStateListener;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "choose_network_provider_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "network_provider_mode":Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    const-string v1, "LocationManagerService"

    const-string v2, "not auto mode just return from PhoneStateChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService$MSiPhoneStateListener;->this$0:Lcom/android/server/LocationManagerService;

    # invokes: Lcom/android/server/LocationManagerService;->doPhoneStateChanged()V
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$900(Lcom/android/server/LocationManagerService;)V

    goto :goto_0
.end method
