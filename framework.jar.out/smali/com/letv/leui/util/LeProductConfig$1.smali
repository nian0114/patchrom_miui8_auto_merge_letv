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
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "LEX626"

    invoke-virtual {p0, v0}, Lcom/letv/leui/util/LeProductConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "LEX622"

    invoke-virtual {p0, v0}, Lcom/letv/leui/util/LeProductConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "LEX623"

    invoke-virtual {p0, v0}, Lcom/letv/leui/util/LeProductConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "LEX636"

    invoke-virtual {p0, v0}, Lcom/letv/leui/util/LeProductConfig$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
