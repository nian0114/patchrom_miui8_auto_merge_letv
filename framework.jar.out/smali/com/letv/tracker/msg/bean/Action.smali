.class public Lcom/letv/tracker/msg/bean/Action;
.super Ljava/lang/Object;
.source "Action.java"


# instance fields
.field private action:Ljava/lang/String;

.field private des:Ljava/lang/String;

.field private props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/msg/bean/Action;->props:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/msg/bean/Action;->timestamp:J

    iput-object p1, p0, Lcom/letv/tracker/msg/bean/Action;->action:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/Action;->props:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/Action;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getDes()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/Action;->des:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/Action;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/letv/tracker/msg/bean/Action;->timestamp:J

    return-wide v0
.end method

.method public setDes(Ljava/lang/String;)V
    .locals 0
    .param p1, "des"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/letv/tracker/msg/bean/Action;->des:Ljava/lang/String;

    return-void
.end method
