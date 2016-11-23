.class public final Lcom/letv/tracker/agnes/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AgnesClient_Configuration"


# instance fields
.field private agnesVersion:Ljava/lang/String;

.field private ext:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/letv/tracker/agnes/Configuration;->ext:I

    .line 33
    const-string v0, "0.8.6"

    iput-object v0, p0, Lcom/letv/tracker/agnes/Configuration;->agnesVersion:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Configuration;->init()V

    .line 24
    return-void
.end method

.method private needLog(Z)V
    .locals 0
    .param p1, "needLog"    # Z

    .prologue
    .line 49
    invoke-static {p1}, Lcom/letv/tracker/util/TrackerLog;->setNeedLog(Z)V

    .line 50
    return-void
.end method

.method private readProps()V
    .locals 9

    .prologue
    .line 73
    const/4 v3, 0x0

    .line 75
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "agnes.properties"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 76
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 77
    .local v4, "p":Ljava/util/Properties;
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 79
    const-string v5, "ext"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    .local v2, "extCode":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/letv/tracker/agnes/Configuration;->setExt(I)V

    .line 84
    :cond_0
    const-string v5, "agnes_version"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    .local v0, "agnesClientV":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 86
    invoke-virtual {p0, v0}, Lcom/letv/tracker/agnes/Configuration;->setAgnesVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    if-eqz v3, :cond_2

    .line 93
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    .end local v0    # "agnesClientV":Ljava/lang/String;
    .end local v2    # "extCode":Ljava/lang/String;
    .end local v4    # "p":Ljava/util/Properties;
    :cond_2
    :goto_0
    return-void

    .line 95
    .restart local v0    # "agnesClientV":Ljava/lang/String;
    .restart local v2    # "extCode":Ljava/lang/String;
    .restart local v4    # "p":Ljava/util/Properties;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "AgnesClient_Configuration"

    const-string v6, ""

    const-string v7, "Faild to close property file!"

    invoke-static {v5, v6, v7, v1}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 88
    .end local v0    # "agnesClientV":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "extCode":Ljava/lang/String;
    .end local v4    # "p":Ljava/util/Properties;
    :catch_1
    move-exception v1

    .line 89
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "AgnesClient_Configuration"

    const-string v6, ""

    const-string v7, "Faild to read property file!"

    invoke-static {v5, v6, v7, v1}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    if-eqz v3, :cond_2

    .line 93
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 95
    :catch_2
    move-exception v1

    .line 96
    const-string v5, "AgnesClient_Configuration"

    const-string v6, ""

    const-string v7, "Faild to close property file!"

    invoke-static {v5, v6, v7, v1}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 91
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 92
    if-eqz v3, :cond_3

    .line 93
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 97
    :cond_3
    :goto_1
    throw v5

    .line 95
    :catch_3
    move-exception v1

    .line 96
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "AgnesClient_Configuration"

    const-string v7, ""

    const-string v8, "Faild to close property file!"

    invoke-static {v6, v7, v8, v1}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public disableLog()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/tracker/agnes/Configuration;->needLog(Z)V

    .line 58
    return-void
.end method

.method public enableLog()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/tracker/agnes/Configuration;->needLog(Z)V

    .line 54
    return-void
.end method

.method public getAgnesVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/letv/tracker/agnes/Configuration;->agnesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/letv/tracker/agnes/Configuration;->ext:I

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Configuration;->getAgnesVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/letv/tracker/util/TrackerLog;->setAgnesVersion(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public setAgnesVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "agnesVersion"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/letv/tracker/agnes/Configuration;->agnesVersion:Ljava/lang/String;

    return-void
.end method

.method public setExt(I)V
    .locals 0
    .param p1, "ext"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/letv/tracker/agnes/Configuration;->ext:I

    return-void
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "logPath"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p1}, Lcom/letv/tracker/util/TrackerLog;->setLogPath(Ljava/lang/String;)V

    .line 46
    return-void
.end method
