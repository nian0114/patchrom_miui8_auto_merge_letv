.class final Lcom/letv/leui/util/LeProductConfig$1;
.super Ljava/util/HashSet;
.source "LeProductConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/LeProductConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 30
    const-string v0, "LEX626"

    invoke-virtual {p0, v0}, Lcom/letv/leui/util/LeProductConfig$1;->add(Ljava/lang/Object;)Z

    .line 31
    const-string v0, "LEX622"

    invoke-virtual {p0, v0}, Lcom/letv/leui/util/LeProductConfig$1;->add(Ljava/lang/Object;)Z

    .line 32
    const-string v0, "LEX623"

    invoke-virtual {p0, v0}, Lcom/letv/leui/util/LeProductConfig$1;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v0, "LEX636"

    invoke-virtual {p0, v0}, Lcom/letv/leui/util/LeProductConfig$1;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method
