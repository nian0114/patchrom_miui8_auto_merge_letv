.class final enum Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
.super Ljava/lang/Enum;
.source "LetvThermalSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LetvThermalSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ThermalSwitchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

.field public static final enum Disabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

.field public static final enum Disabling:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

.field public static final enum Enabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

.field public static final enum Enabling:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

.field public static final enum Init:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    const-string v1, "Init"

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Init:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    .line 39
    new-instance v0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    const-string v1, "Enabled"

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Enabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    .line 40
    new-instance v0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    const-string v1, "Disabling"

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Disabling:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    .line 41
    new-instance v0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    const-string v1, "Disabled"

    invoke-direct {v0, v1, v5}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Disabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    .line 42
    new-instance v0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    const-string v1, "Enabling"

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Enabling:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    sget-object v1, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Init:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Enabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Disabling:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Disabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Enabling:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->$VALUES:[Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->$VALUES:[Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    invoke-virtual {v0}, [Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    return-object v0
.end method
