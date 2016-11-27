.class public Lcom/letv/leui/util/LeBootVideoUtils;
.super Ljava/lang/Object;
.source "LeBootVideoUtils.java"


# static fields
.field public static final BOOTVIDEO_PATH:Ljava/lang/String; = "/data/fastplay/bootvideo.ts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bootVideoExists()Z
    .locals 2

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/fastplay/bootvideo.ts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "bootVideoFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method
