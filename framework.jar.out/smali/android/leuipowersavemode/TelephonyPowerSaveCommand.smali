.class public Landroid/leuipowersavemode/TelephonyPowerSaveCommand;
.super Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;
.source "TelephonyPowerSaveCommand.java"


# instance fields
.field private mTelephonyBeforeState:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;-><init>()V

    return-void
.end method

.method private getCurrentTelephonyState(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyBeforeState:Z

    goto :goto_0
.end method

.method private getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method


# virtual methods
.method public disabled(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->disabled(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->getCurrentTelephonyState(Landroid/content/Context;)Z

    move-result v0

    .local v0, "currentDataEnabledState":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disabled TelephonyCommand ,mTelephonyBeforeState is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyBeforeState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",currentDataEnabledState is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyBeforeState:Z

    if-eq v1, v0, :cond_3

    iget-object v2, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-boolean v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyBeforeState:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Telephony toString is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .end local v0    # "currentDataEnabledState":Z
    :cond_1
    return-void

    .restart local v0    # "currentDataEnabledState":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "no action ,but success!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    goto :goto_1
.end method

.method public enabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->enabled(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->getCurrentTelephonyState(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyBeforeState:Z

    iget-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    const-string v0, "enabled TelephonyCommand TelephonyManager set false"

    iput-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTelephonyBeforeState is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mTelephonyBeforeState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",TelephonyCommand toString is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "mTelephonyManager null!!!"

    iput-object v0, p0, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;->mCommandString:Ljava/lang/String;

    goto :goto_0
.end method
