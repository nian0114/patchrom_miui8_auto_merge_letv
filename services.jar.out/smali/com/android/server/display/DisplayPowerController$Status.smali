.class final enum Lcom/android/server/display/DisplayPowerController$Status;
.super Ljava/lang/Enum;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/display/DisplayPowerController$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/display/DisplayPowerController$Status;

.field public static final enum AUTO_BACKLIGHT_ADJUSTMENT_CHANGE:Lcom/android/server/display/DisplayPowerController$Status;

.field public static final enum AUTO_BACKLIGHT_BRIGHTEN:Lcom/android/server/display/DisplayPowerController$Status;

.field public static final enum AUTO_BACKLIGHT_DARKEN:Lcom/android/server/display/DisplayPowerController$Status;

.field public static final enum BRIGHT_TO_DIM:Lcom/android/server/display/DisplayPowerController$Status;

.field public static final enum DIM_TO_BRIGHT:Lcom/android/server/display/DisplayPowerController$Status;

.field public static final enum MANUAL_BACKLIGHT_BRIGHTEN:Lcom/android/server/display/DisplayPowerController$Status;

.field public static final enum MANUAL_BACKLIGHT_DARKEN:Lcom/android/server/display/DisplayPowerController$Status;

.field public static final enum SCREEN_ON:Lcom/android/server/display/DisplayPowerController$Status;

.field public static final enum UNKNOW_STATUS:Lcom/android/server/display/DisplayPowerController$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/display/DisplayPowerController$Status;

    const-string v1, "UNKNOW_STATUS"

    invoke-direct {v0, v1, v3}, Lcom/android/server/display/DisplayPowerController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/DisplayPowerController$Status;->UNKNOW_STATUS:Lcom/android/server/display/DisplayPowerController$Status;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$Status;

    const-string v1, "MANUAL_BACKLIGHT_BRIGHTEN"

    invoke-direct {v0, v1, v4}, Lcom/android/server/display/DisplayPowerController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/DisplayPowerController$Status;->MANUAL_BACKLIGHT_BRIGHTEN:Lcom/android/server/display/DisplayPowerController$Status;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$Status;

    const-string v1, "MANUAL_BACKLIGHT_DARKEN"

    invoke-direct {v0, v1, v5}, Lcom/android/server/display/DisplayPowerController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/DisplayPowerController$Status;->MANUAL_BACKLIGHT_DARKEN:Lcom/android/server/display/DisplayPowerController$Status;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$Status;

    const-string v1, "AUTO_BACKLIGHT_BRIGHTEN"

    invoke-direct {v0, v1, v6}, Lcom/android/server/display/DisplayPowerController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/DisplayPowerController$Status;->AUTO_BACKLIGHT_BRIGHTEN:Lcom/android/server/display/DisplayPowerController$Status;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$Status;

    const-string v1, "AUTO_BACKLIGHT_DARKEN"

    invoke-direct {v0, v1, v7}, Lcom/android/server/display/DisplayPowerController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/DisplayPowerController$Status;->AUTO_BACKLIGHT_DARKEN:Lcom/android/server/display/DisplayPowerController$Status;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$Status;

    const-string v1, "AUTO_BACKLIGHT_ADJUSTMENT_CHANGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/DisplayPowerController$Status;->AUTO_BACKLIGHT_ADJUSTMENT_CHANGE:Lcom/android/server/display/DisplayPowerController$Status;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$Status;

    const-string v1, "SCREEN_ON"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/DisplayPowerController$Status;->SCREEN_ON:Lcom/android/server/display/DisplayPowerController$Status;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$Status;

    const-string v1, "BRIGHT_TO_DIM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/DisplayPowerController$Status;->BRIGHT_TO_DIM:Lcom/android/server/display/DisplayPowerController$Status;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$Status;

    const-string v1, "DIM_TO_BRIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/DisplayPowerController$Status;->DIM_TO_BRIGHT:Lcom/android/server/display/DisplayPowerController$Status;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/server/display/DisplayPowerController$Status;

    sget-object v1, Lcom/android/server/display/DisplayPowerController$Status;->UNKNOW_STATUS:Lcom/android/server/display/DisplayPowerController$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/display/DisplayPowerController$Status;->MANUAL_BACKLIGHT_BRIGHTEN:Lcom/android/server/display/DisplayPowerController$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/display/DisplayPowerController$Status;->MANUAL_BACKLIGHT_DARKEN:Lcom/android/server/display/DisplayPowerController$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/display/DisplayPowerController$Status;->AUTO_BACKLIGHT_BRIGHTEN:Lcom/android/server/display/DisplayPowerController$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/display/DisplayPowerController$Status;->AUTO_BACKLIGHT_DARKEN:Lcom/android/server/display/DisplayPowerController$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/display/DisplayPowerController$Status;->AUTO_BACKLIGHT_ADJUSTMENT_CHANGE:Lcom/android/server/display/DisplayPowerController$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/display/DisplayPowerController$Status;->SCREEN_ON:Lcom/android/server/display/DisplayPowerController$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/display/DisplayPowerController$Status;->BRIGHT_TO_DIM:Lcom/android/server/display/DisplayPowerController$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/display/DisplayPowerController$Status;->DIM_TO_BRIGHT:Lcom/android/server/display/DisplayPowerController$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/display/DisplayPowerController$Status;->$VALUES:[Lcom/android/server/display/DisplayPowerController$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/DisplayPowerController$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/display/DisplayPowerController$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerController$Status;

    return-object v0
.end method

.method public static values()[Lcom/android/server/display/DisplayPowerController$Status;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/display/DisplayPowerController$Status;->$VALUES:[Lcom/android/server/display/DisplayPowerController$Status;

    invoke-virtual {v0}, [Lcom/android/server/display/DisplayPowerController$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/DisplayPowerController$Status;

    return-object v0
.end method
