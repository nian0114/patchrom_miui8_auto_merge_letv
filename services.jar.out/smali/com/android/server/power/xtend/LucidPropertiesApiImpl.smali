.class public Lcom/android/server/power/xtend/LucidPropertiesApiImpl;
.super Ljava/lang/Object;
.source "LucidPropertiesApiImpl.java"

# interfaces
.implements Lcom/android/server/power/xtend/LucidPropertiesAPI;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private GetModuleConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;Ljava/lang/String;)V
    .locals 7
    .param p1, "mpi"    # Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lib"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Xtend.so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "libString":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v2

    .local v2, "isInstalled":Z
    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->getMode(Ljava/lang/String;)Z

    move-result v0

    .local v0, "AutoMode":Z
    invoke-direct {p0, p2}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->getParam(Ljava/lang/String;)I

    move-result v4

    .local v4, "param":I
    if-eqz v0, :cond_0

    sget-object v5, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;->AUTOMATIC_MODE:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    invoke-virtual {p1, v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setMode(Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;)V

    :goto_0
    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :cond_0
    sget-object v5, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;->MANUAL_MODE:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    invoke-virtual {p1, v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setMode(Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;)V

    goto :goto_0

    :pswitch_1
    sget-object v5, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->NO_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    invoke-virtual {p1, v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V

    goto :goto_1

    :pswitch_2
    sget-object v5, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->NORMAL_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    invoke-virtual {p1, v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V

    goto :goto_1

    :pswitch_3
    sget-object v5, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->HIGH_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    invoke-virtual {p1, v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V

    goto :goto_1

    :pswitch_4
    sget-object v5, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->ULTRA_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    invoke-virtual {p1, v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V

    goto :goto_1

    .end local v0    # "AutoMode":Z
    .end local v4    # "param":I
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    .local v1, "e":Ljava/io/FileNotFoundException;
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private SetModuleToManualMode(Ljava/lang/String;I)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/InvalidParameterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isInternalTestAppInstalled()Z

    move-result v2

    .local v2, "isTestApplicationInstalled":Z
    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .local v0, "e":Ljava/lang/IllegalStateException;
    throw v0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Xtend.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "productLib":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v1

    .local v1, "isInstalled":Z
    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    const/4 v4, 0x2

    if-eq v4, p2, :cond_1

    const/4 v4, 0x3

    if-eq v4, p2, :cond_1

    const/4 v4, 0x4

    if-eq v4, p2, :cond_1

    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    .local v0, "e":Ljava/security/InvalidParameterException;
    throw v0

    .end local v0    # "e":Ljava/security/InvalidParameterException;
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->setMode(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->setParam(Ljava/lang/String;I)V

    return-void

    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    .local v0, "e":Ljava/io/FileNotFoundException;
    throw v0
.end method

.method private SetModuleXtendToOff(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isInternalTestAppInstalled()Z

    move-result v2

    .local v2, "isTestApplicationInstalled":Z
    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .local v0, "e":Ljava/lang/IllegalStateException;
    throw v0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Xtend.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v1

    .local v1, "isInstalled":Z
    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v5}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->setMode(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, v5}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->setParam(Ljava/lang/String;I)V

    return-void

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    .local v0, "e":Ljava/io/FileNotFoundException;
    throw v0
.end method

.method private SetProductToAutomaticMode(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isInternalTestAppInstalled()Z

    move-result v2

    .local v2, "isTestApplicationInstalled":Z
    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .local v0, "e":Ljava/lang/IllegalStateException;
    throw v0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Xtend.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "productLib":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v1

    .local v1, "isInstalled":Z
    if-eqz v1, :cond_1

    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->setMode(Ljava/lang/String;Z)V

    return-void

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    .local v0, "e":Ljava/io/FileNotFoundException;
    throw v0
.end method

.method private getMode(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sys.lucid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Xtend.automode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "propName":Ljava/lang/String;
    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "valStr":Ljava/lang/String;
    const-string v2, "1"

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getParam(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sys.lucid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Xtend.state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "propName":Ljava/lang/String;
    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "valStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isSoInstalled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "SoName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method private setMode(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isAuto"    # Z

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sys.lucid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Xtend.automode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "propName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "propValue":I
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setParam(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # I

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sys.lucid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Xtend.state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "propName":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public GetGameXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V
    .locals 1
    .param p1, "mpi"    # Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v0, "Game"

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->GetModuleConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;Ljava/lang/String;)V

    return-void
.end method

.method public GetNavXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V
    .locals 1
    .param p1, "mpi"    # Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v0, "Nav"

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->GetModuleConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;Ljava/lang/String;)V

    return-void
.end method

.method public GetPowerXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)Z
    .locals 19
    .param p1, "mpi"    # Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isInternalTestAppInstalled()Z

    move-result v14

    .local v14, "isTestApplicationInstalled":Z
    if-eqz v14, :cond_0

    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-direct {v9}, Ljava/lang/IllegalStateException;-><init>()V

    .local v9, "e":Ljava/lang/IllegalStateException;
    throw v9

    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    const-string v17, "libGameXtend.so"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v10

    .local v10, "isGameInstalled":Z
    const-string v17, "libWebXtend.so"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v16

    .local v16, "isWebInstalled":Z
    const-string v17, "libNavXtend.so"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v11

    .local v11, "isNavInstalled":Z
    const-string v17, "libSocialXtend.so"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v13

    .local v13, "isSocialInstalled":Z
    if-nez v10, :cond_1

    if-nez v16, :cond_1

    if-nez v11, :cond_1

    if-eqz v13, :cond_8

    :cond_1
    const/4 v12, 0x1

    .local v12, "isPowerXtendProductInstalled":Z
    :goto_0
    const/4 v7, 0x0

    .local v7, "areAllEquals":Z
    if-eqz v12, :cond_12

    :try_start_0
    new-instance v2, Lcom/android/server/power/xtend/ModulePropertiesInfo;

    invoke-direct {v2}, Lcom/android/server/power/xtend/ModulePropertiesInfo;-><init>()V

    .local v2, "GameMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->GetGameXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V

    :cond_2
    new-instance v6, Lcom/android/server/power/xtend/ModulePropertiesInfo;

    invoke-direct {v6}, Lcom/android/server/power/xtend/ModulePropertiesInfo;-><init>()V

    .local v6, "WebMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->GetWebXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V

    :cond_3
    new-instance v3, Lcom/android/server/power/xtend/ModulePropertiesInfo;

    invoke-direct {v3}, Lcom/android/server/power/xtend/ModulePropertiesInfo;-><init>()V

    .local v3, "NavMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->GetNavXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V

    :cond_4
    new-instance v4, Lcom/android/server/power/xtend/ModulePropertiesInfo;

    invoke-direct {v4}, Lcom/android/server/power/xtend/ModulePropertiesInfo;-><init>()V

    .local v4, "SocialMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->GetSocialXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V

    :cond_5
    new-instance v5, Lcom/android/server/power/xtend/ModulePropertiesInfo;

    invoke-direct {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;-><init>()V

    .local v5, "TotalMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    const/4 v15, 0x0

    .local v15, "isTotalMPIinited":Z
    if-eqz v10, :cond_6

    invoke-virtual {v2}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getMode()Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setMode(Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;)V

    invoke-virtual {v2}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getState()Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V

    const/4 v15, 0x1

    const/4 v7, 0x1

    :cond_6
    if-eqz v16, :cond_a

    if-eqz v15, :cond_9

    invoke-virtual {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getModeValue()I

    move-result v17

    invoke-virtual {v6}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getModeValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    invoke-virtual {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getStateValue()I

    move-result v17

    invoke-virtual {v6}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getStateValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    :cond_7
    const/4 v7, 0x0

    move v8, v7

    .end local v2    # "GameMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v3    # "NavMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v4    # "SocialMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v5    # "TotalMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v6    # "WebMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v7    # "areAllEquals":Z
    .end local v15    # "isTotalMPIinited":Z
    .local v8, "areAllEquals":I
    :goto_1
    return v8

    .end local v8    # "areAllEquals":I
    .end local v12    # "isPowerXtendProductInstalled":Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_0

    .restart local v2    # "GameMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .restart local v3    # "NavMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .restart local v4    # "SocialMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .restart local v5    # "TotalMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .restart local v6    # "WebMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .restart local v7    # "areAllEquals":Z
    .restart local v12    # "isPowerXtendProductInstalled":Z
    .restart local v15    # "isTotalMPIinited":Z
    :cond_9
    invoke-virtual {v6}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getMode()Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setMode(Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;)V

    invoke-virtual {v6}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getState()Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V

    const/4 v15, 0x1

    const/4 v7, 0x1

    :cond_a
    if-eqz v11, :cond_d

    if-eqz v15, :cond_c

    invoke-virtual {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getModeValue()I

    move-result v17

    invoke-virtual {v3}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getModeValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    invoke-virtual {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getStateValue()I

    move-result v17

    invoke-virtual {v3}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getStateValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    :cond_b
    const/4 v7, 0x0

    move v8, v7

    .restart local v8    # "areAllEquals":I
    goto :goto_1

    .end local v8    # "areAllEquals":I
    :cond_c
    invoke-virtual {v3}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getMode()Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setMode(Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;)V

    invoke-virtual {v3}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getState()Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V

    const/4 v15, 0x1

    const/4 v7, 0x1

    :cond_d
    if-eqz v13, :cond_10

    if-eqz v15, :cond_f

    invoke-virtual {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getModeValue()I

    move-result v17

    invoke-virtual {v4}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getModeValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    invoke-virtual {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getStateValue()I

    move-result v17

    invoke-virtual {v4}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getStateValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    :cond_e
    const/4 v7, 0x0

    move v8, v7

    .restart local v8    # "areAllEquals":I
    goto :goto_1

    .end local v8    # "areAllEquals":I
    :cond_f
    invoke-virtual {v4}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getMode()Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setMode(Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;)V

    invoke-virtual {v4}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getState()Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V

    const/4 v15, 0x1

    const/4 v7, 0x1

    :cond_10
    if-eqz v15, :cond_11

    if-eqz v7, :cond_11

    invoke-virtual {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getMode()Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setMode(Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;)V

    invoke-virtual {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getState()Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "GameMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v3    # "NavMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v4    # "SocialMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v5    # "TotalMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v6    # "WebMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v15    # "isTotalMPIinited":Z
    :cond_11
    :goto_2
    move v8, v7

    .restart local v8    # "areAllEquals":I
    goto/16 :goto_1

    .end local v8    # "areAllEquals":I
    :cond_12
    new-instance v9, Ljava/io/FileNotFoundException;

    invoke-direct {v9}, Ljava/io/FileNotFoundException;-><init>()V

    .local v9, "e":Ljava/io/FileNotFoundException;
    throw v9

    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_0
    move-exception v17

    goto :goto_2

    :catch_1
    move-exception v17

    goto :goto_2
.end method

.method public GetSocialXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V
    .locals 1
    .param p1, "mpi"    # Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v0, "Social"

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->GetModuleConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;Ljava/lang/String;)V

    return-void
.end method

.method public GetWebXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V
    .locals 1
    .param p1, "mpi"    # Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v0, "Web"

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->GetModuleConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;Ljava/lang/String;)V

    return-void
.end method

.method public SetGameXtendToAutomaticMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v0, "Game"

    invoke-direct {p0, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetProductToAutomaticMode(Ljava/lang/String;)V

    return-void
.end method

.method public SetGameXtendToManualMode(I)V
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/InvalidParameterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v0, "Game"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetModuleToManualMode(Ljava/lang/String;I)V

    return-void
.end method

.method public SetGameXtendToOff()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v0, "Game"

    invoke-direct {p0, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetModuleXtendToOff(Ljava/lang/String;)V

    return-void
.end method

.method public SetNavXtendToAutomaticMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v0, "Nav"

    invoke-direct {p0, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetProductToAutomaticMode(Ljava/lang/String;)V

    return-void
.end method

.method public SetNavXtendToManualMode(I)V
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/InvalidParameterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v0, "Nav"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetModuleToManualMode(Ljava/lang/String;I)V

    return-void
.end method

.method public SetNavXtendToOff()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v0, "Nav"

    invoke-direct {p0, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetModuleXtendToOff(Ljava/lang/String;)V

    return-void
.end method

.method public SetPowerXtendToAutomaticMode()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isInternalTestAppInstalled()Z

    move-result v5

    .local v5, "isTestApplicationInstalled":Z
    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .local v0, "e":Ljava/lang/IllegalStateException;
    throw v0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    const-string v7, "libGameXtend.so"

    invoke-direct {p0, v7}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v1

    .local v1, "isGameInstalled":Z
    const-string v7, "libWebXtend.so"

    invoke-direct {p0, v7}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v6

    .local v6, "isWebInstalled":Z
    const-string v7, "libNavXtend.so"

    invoke-direct {p0, v7}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v2

    .local v2, "isNavInstalled":Z
    const-string v7, "libSocialXtend.so"

    invoke-direct {p0, v7}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v4

    .local v4, "isSocialInstalled":Z
    if-nez v1, :cond_1

    if-nez v6, :cond_1

    if-nez v2, :cond_1

    if-eqz v4, :cond_6

    :cond_1
    const/4 v3, 0x1

    .local v3, "isPowerXtendProductInstalled":Z
    :goto_0
    if-eqz v3, :cond_7

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetGameXtendToAutomaticMode()V

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetWebXtendToAutomaticMode()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetNavXtendToAutomaticMode()V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetSocialXtendToAutomaticMode()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-void

    .end local v3    # "isPowerXtendProductInstalled":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .restart local v3    # "isPowerXtendProductInstalled":Z
    :cond_7
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    .local v0, "e":Ljava/io/FileNotFoundException;
    throw v0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public SetPowerXtendToManualMode(I)V
    .locals 8
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/InvalidParameterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isInternalTestAppInstalled()Z

    move-result v5

    .local v5, "isTestApplicationInstalled":Z
    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .local v0, "e":Ljava/lang/IllegalStateException;
    throw v0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    const-string v7, "libGameXtend.so"

    invoke-direct {p0, v7}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v1

    .local v1, "isGameInstalled":Z
    const-string v7, "libWebXtend.so"

    invoke-direct {p0, v7}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v6

    .local v6, "isWebInstalled":Z
    const-string v7, "libNavXtend.so"

    invoke-direct {p0, v7}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v2

    .local v2, "isNavInstalled":Z
    const-string v7, "libSocialXtend.so"

    invoke-direct {p0, v7}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v4

    .local v4, "isSocialInstalled":Z
    if-nez v1, :cond_1

    if-nez v6, :cond_1

    if-nez v2, :cond_1

    if-eqz v4, :cond_6

    :cond_1
    const/4 v3, 0x1

    .local v3, "isPowerXtendProductInstalled":Z
    :goto_0
    if-eqz v3, :cond_7

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetGameXtendToManualMode(I)V

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetWebXtendToManualMode(I)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetNavXtendToManualMode(I)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetSocialXtendToManualMode(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-void

    .end local v3    # "isPowerXtendProductInstalled":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .restart local v3    # "isPowerXtendProductInstalled":Z
    :cond_7
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    .local v0, "e":Ljava/io/FileNotFoundException;
    throw v0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_1

    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method public SetPowerXtendToOff()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isInternalTestAppInstalled()Z

    move-result v5

    .local v5, "isTestApplicationInstalled":Z
    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .local v0, "e":Ljava/lang/IllegalStateException;
    throw v0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    const-string v7, "libGameXtend.so"

    invoke-direct {p0, v7}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v1

    .local v1, "isGameInstalled":Z
    const-string v7, "libWebXtend.so"

    invoke-direct {p0, v7}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v6

    .local v6, "isWebInstalled":Z
    const-string v7, "libNavXtend.so"

    invoke-direct {p0, v7}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v2

    .local v2, "isNavInstalled":Z
    const-string v7, "libSocialXtend.so"

    invoke-direct {p0, v7}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v4

    .local v4, "isSocialInstalled":Z
    if-nez v1, :cond_1

    if-nez v6, :cond_1

    if-nez v2, :cond_1

    if-eqz v4, :cond_6

    :cond_1
    const/4 v3, 0x1

    .local v3, "isPowerXtendProductInstalled":Z
    :goto_0
    if-eqz v3, :cond_7

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetGameXtendToOff()V

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetWebXtendToOff()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetNavXtendToOff()V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetSocialXtendToOff()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-void

    .end local v3    # "isPowerXtendProductInstalled":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .restart local v3    # "isPowerXtendProductInstalled":Z
    :cond_7
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    .local v0, "e":Ljava/io/FileNotFoundException;
    throw v0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public SetSocialXtendToAutomaticMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v0, "Social"

    invoke-direct {p0, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetProductToAutomaticMode(Ljava/lang/String;)V

    return-void
.end method

.method public SetSocialXtendToManualMode(I)V
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/InvalidParameterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v0, "Social"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetModuleToManualMode(Ljava/lang/String;I)V

    return-void
.end method

.method public SetSocialXtendToOff()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v0, "Social"

    invoke-direct {p0, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetModuleXtendToOff(Ljava/lang/String;)V

    return-void
.end method

.method public SetWebXtendToAutomaticMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v0, "Web"

    invoke-direct {p0, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetProductToAutomaticMode(Ljava/lang/String;)V

    return-void
.end method

.method public SetWebXtendToManualMode(I)V
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/InvalidParameterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v0, "Web"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetModuleToManualMode(Ljava/lang/String;I)V

    return-void
.end method

.method public SetWebXtendToOff()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string v0, "Web"

    invoke-direct {p0, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetModuleXtendToOff(Ljava/lang/String;)V

    return-void
.end method

.method public isInternalTestAppInstalled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method
