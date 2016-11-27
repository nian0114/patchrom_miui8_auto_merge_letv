.class public final Lcom/letv/tracker/agnes/PlaySDK;
.super Ljava/lang/Object;
.source "PlaySDK.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private appRunId:Ljava/lang/String;

.field private appVer:Lcom/letv/tracker/msg/bean/Version;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "runId"    # Ljava/lang/String;
    .param p3, "version"    # Lcom/letv/tracker/msg/bean/Version;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/letv/tracker/agnes/PlaySDK;->appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/letv/tracker/agnes/PlaySDK;->appRunId:Ljava/lang/String;

    iput-object p3, p0, Lcom/letv/tracker/agnes/PlaySDK;->appVer:Lcom/letv/tracker/msg/bean/Version;

    return-void
.end method


# virtual methods
.method public createVideoPlay()Lcom/letv/tracker/agnes/VideoPlay;
    .locals 4

    .prologue
    new-instance v0, Lcom/letv/tracker/agnes/VideoPlay;

    iget-object v1, p0, Lcom/letv/tracker/agnes/PlaySDK;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/PlaySDK;->appRunId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/PlaySDK;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/agnes/VideoPlay;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;)V

    .local v0, "vp":Lcom/letv/tracker/agnes/VideoPlay;
    const-string v1, "play_sdk"

    invoke-virtual {v0, v1}, Lcom/letv/tracker/agnes/VideoPlay;->setCaller(Ljava/lang/String;)V

    return-object v0
.end method

.method public createVideoPlay(Ljava/lang/String;)Lcom/letv/tracker/agnes/VideoPlay;
    .locals 4
    .param p1, "widgetId"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/letv/tracker/agnes/VideoPlay;

    iget-object v1, p0, Lcom/letv/tracker/agnes/PlaySDK;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/PlaySDK;->appRunId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/PlaySDK;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/letv/tracker/agnes/VideoPlay;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V

    .local v0, "vp":Lcom/letv/tracker/agnes/VideoPlay;
    const-string v1, "play_sdk"

    invoke-virtual {v0, v1}, Lcom/letv/tracker/agnes/VideoPlay;->setCaller(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/PlaySDK;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppRunId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/PlaySDK;->appRunId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVer()Lcom/letv/tracker/msg/bean/Version;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/PlaySDK;->appVer:Lcom/letv/tracker/msg/bean/Version;

    return-object v0
.end method
