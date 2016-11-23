.class final Lcom/android/internal/widget/LockPatternUtils$2;
.super Ljava/util/ArrayList;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1471
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1473
    const-string v0, "access.control."

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils$2;->add(Ljava/lang/Object;)Z

    .line 1474
    const-string v0, "file.protected."

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils$2;->add(Ljava/lang/Object;)Z

    .line 1475
    return-void
.end method
