.class final enum Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;
.super Ljava/lang/Enum;
.source "AsicConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum adcMidRange:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum apI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum apV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum dbiasV1:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum dbiasV2:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum dbiasV3:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum dbiasV4:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum dresetvI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum dresetvV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum numRegs:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum numRows:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum pulseCount:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum rangeGateDelay:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum rangeGateWidth:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum rbiasV1:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum rbiasV2:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum rbiasV3:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum rbiasV4:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum scanHeight:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum scanWidth:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum sensorBias:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum settleTime:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum t20VI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum t20VV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum tbgEnable:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum tbgFreq:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum vGateI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum vGateV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum vLogicI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

.field public static final enum vLogicV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "scanWidth"

    invoke-direct {v0, v1, v3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->scanWidth:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "scanHeight"

    invoke-direct {v0, v1, v4}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->scanHeight:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "settleTime"

    invoke-direct {v0, v1, v5}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->settleTime:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "t20VV"

    invoke-direct {v0, v1, v6}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->t20VV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "t20VI"

    invoke-direct {v0, v1, v7}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->t20VI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "vGateV"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vGateV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "vGateI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vGateI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "vLogicV"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vLogicV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "vLogicI"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vLogicI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "apV"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->apV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "apI"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->apI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "dresetvV"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dresetvV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "dresetvI"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dresetvI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "rbiasV1"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV1:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "rbiasV2"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV2:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "rbiasV3"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV3:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "rbiasV4"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV4:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "dbiasV1"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV1:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "dbiasV2"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV2:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "dbiasV3"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV3:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "dbiasV4"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV4:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "tbgFreq"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->tbgFreq:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "tbgEnable"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->tbgEnable:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "numRows"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->numRows:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "sensorBias"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->sensorBias:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "adcMidRange"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->adcMidRange:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "rangeGateDelay"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rangeGateDelay:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "rangeGateWidth"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rangeGateWidth:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "pulseCount"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->pulseCount:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const-string v1, "numRegs"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->numRegs:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    sget-object v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->scanWidth:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->scanHeight:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->settleTime:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->t20VV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->t20VI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vGateV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vGateI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vLogicV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vLogicI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->apV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->apI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dresetvV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dresetvI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV1:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV2:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV3:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV4:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV1:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV2:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV3:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV4:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->tbgFreq:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->tbgEnable:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->numRows:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->sensorBias:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->adcMidRange:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rangeGateDelay:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rangeGateWidth:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->pulseCount:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->numRegs:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->$VALUES:[Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->$VALUES:[Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-virtual {v0}, [Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    return-object v0
.end method
