.class public final enum Lcom/letv/leui/util/LeFontScaleConfig$FontScale;
.super Ljava/lang/Enum;
.source "LeFontScaleConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/LeFontScaleConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontScale"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/leui/util/LeFontScaleConfig$FontScale;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

.field public static final enum Extra:Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

.field public static final enum Max:Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

.field public static final enum Normal:Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

.field public static final enum Small:Lcom/letv/leui/util/LeFontScaleConfig$FontScale;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

    const-string v1, "Small"

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;->Small:Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

    new-instance v0, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3}, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;->Normal:Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

    new-instance v0, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

    const-string v1, "Max"

    invoke-direct {v0, v1, v4}, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;->Max:Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

    new-instance v0, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

    const-string v1, "Extra"

    invoke-direct {v0, v1, v5}, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;->Extra:Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

    sget-object v1, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;->Small:Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;->Normal:Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;->Max:Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;->Extra:Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

    aput-object v1, v0, v5

    sput-object v0, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;->$VALUES:[Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

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

.method public static valueOf(Ljava/lang/String;)Lcom/letv/leui/util/LeFontScaleConfig$FontScale;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

    return-object v0
.end method

.method public static values()[Lcom/letv/leui/util/LeFontScaleConfig$FontScale;
    .locals 1

    .prologue
    sget-object v0, Lcom/letv/leui/util/LeFontScaleConfig$FontScale;->$VALUES:[Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

    invoke-virtual {v0}, [Lcom/letv/leui/util/LeFontScaleConfig$FontScale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/leui/util/LeFontScaleConfig$FontScale;

    return-object v0
.end method
