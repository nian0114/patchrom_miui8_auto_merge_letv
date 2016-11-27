.class public Lcom/letv/tracker/service/Converter;
.super Ljava/lang/Object;
.source "Converter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertAction(Lcom/letv/tracker/msg/bean/Action;)Lcom/android/letv/agnes/service/beans/IAction;
    .locals 7
    .param p0, "ac"    # Lcom/letv/tracker/msg/bean/Action;

    .prologue
    .line 11
    new-instance v1, Lcom/android/letv/agnes/service/beans/IAction;

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Action;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Action;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Action;->getDes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Action;->getProps()Ljava/util/Map;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/android/letv/agnes/service/beans/IAction;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public static convertVersion(Lcom/letv/tracker/msg/bean/Version;)Lcom/android/letv/agnes/service/beans/IVersion;
    .locals 6
    .param p0, "ver"    # Lcom/letv/tracker/msg/bean/Version;

    .prologue
    .line 15
    new-instance v0, Lcom/android/letv/agnes/service/beans/IVersion;

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Version;->getMajor()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Version;->getMinor()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Version;->getPatch()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Version;->getBuild()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Version;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/letv/agnes/service/beans/IVersion;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
