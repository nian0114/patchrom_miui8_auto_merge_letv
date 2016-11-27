.class public Lcom/letv/extsensor/ExtSensorEvent;
.super Ljava/lang/Object;
.source "ExtSensorEvent.java"


# instance fields
.field public accuracy:I

.field public sensor:I

.field public timestamp:J

.field public final values:[F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "valueSize"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/letv/extsensor/ExtSensorEvent;->values:[F

    return-void
.end method
