.class Lcom/letv/extsensor/ExtSensorManager$ExtSensor;
.super Ljava/lang/Object;
.source "ExtSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/extsensor/ExtSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtSensor"
.end annotation


# instance fields
.field private sampleRate:I

.field private final sensorType:I

.field final synthetic this$0:Lcom/letv/extsensor/ExtSensorManager;


# direct methods
.method constructor <init>(Lcom/letv/extsensor/ExtSensorManager;II)V
    .locals 0
    .param p2, "sensor"    # I
    .param p3, "rate"    # I

    .prologue
    .line 149
    iput-object p1, p0, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;->this$0:Lcom/letv/extsensor/ExtSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p2, p0, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;->sensorType:I

    .line 151
    invoke-virtual {p0, p3}, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;->setSampleRate(I)V

    .line 152
    return-void
.end method


# virtual methods
.method public getSampleRate()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;->sampleRate:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;->sensorType:I

    return v0
.end method

.method public setSampleRate(I)V
    .locals 1
    .param p1, "rate"    # I

    .prologue
    const/16 v0, 0x1388

    .line 143
    if-ge p1, v0, :cond_1

    .line 144
    iput v0, p0, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;->sampleRate:I

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget v0, p0, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;->sampleRate:I

    if-ge p1, v0, :cond_0

    .line 146
    iput p1, p0, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;->sampleRate:I

    goto :goto_0
.end method
