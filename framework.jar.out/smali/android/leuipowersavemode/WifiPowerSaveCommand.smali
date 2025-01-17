.class public Landroid/leuipowersavemode/WifiPowerSaveCommand;
.super Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;
.source "WifiPowerSaveCommand.java"


# instance fields
.field private mWifiBeforeState:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;-><init>()V

    return-void
.end method

.method private getCurrentWifiState(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/WifiPowerSaveCommand;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .local v0, "wifiState":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getCurrentWifiState wifiManager wifiState is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    const-string v1, "leuiDeepPowerSave"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiCommand getCurrentWifiState state is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    .end local v0    # "wifiState":I
    :goto_0
    return v1

    .restart local v0    # "wifiState":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "wifiState":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getCurrentWifiState wifiManager null!!!,WifiCommand toString is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiBeforeState:Z

    goto :goto_0
.end method

.method private getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v0, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private setWifiEnabled(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isChecked"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/WifiPowerSaveCommand;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iput-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p2, :cond_0

    const-string v1, "wifi"

    invoke-static {p1, v1}, Landroid/leuipowersavemode/CommandUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RadioNotAllow wifi "

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .local v0, "wifiApState":I
    if-eqz p2, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_2
    iget-object v1, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "setWifiEnabled error!!! "

    goto :goto_0

    :cond_3
    const-string v1, "setWifiEnabled success!!! "

    goto :goto_0
.end method


# virtual methods
.method public disabled(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->disabled(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Landroid/leuipowersavemode/WifiPowerSaveCommand;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iput-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .local v1, "wifiApState":I
    invoke-direct {p0, p1}, Landroid/leuipowersavemode/WifiPowerSaveCommand;->getCurrentWifiState(Landroid/content/Context;)Z

    move-result v0

    .local v0, "currentWifiState":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disabled wifi command wifi ap state is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mWifiBeforeState is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiBeforeState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",currentWifiState is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiBeforeState:Z

    if-eq v2, v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_0

    iget-boolean v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiBeforeState:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, p1, v2}, Landroid/leuipowersavemode/WifiPowerSaveCommand;->setWifiEnabled(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",WifiCommand toString is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .end local v0    # "currentWifiState":Z
    .end local v1    # "wifiApState":I
    :cond_1
    return-void

    .restart local v0    # "currentWifiState":Z
    .restart local v1    # "wifiApState":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "no action ,but success!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    goto :goto_1
.end method

.method public enabled(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->enabled(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Landroid/leuipowersavemode/WifiPowerSaveCommand;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iput-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    const-string v2, ""

    iput-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    const-string v2, "leuiDeepPowerSave"

    const-string v3, "WifiCommand enabled..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Landroid/leuipowersavemode/WifiPowerSaveCommand;->getCurrentWifiState(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiBeforeState:Z

    iget-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    .local v1, "isSetWifiEnabled":Z
    iget-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    .local v0, "isSetWifiApEnabled":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled WifiCommand WifiEnabled set false state is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",WifiApEnabled set false state is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",WifiBeforeState is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mWifiBeforeState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",WifiCommand toString is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/leuipowersavemode/WifiPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .end local v0    # "isSetWifiApEnabled":Z
    .end local v1    # "isSetWifiEnabled":Z
    :cond_0
    return-void
.end method
