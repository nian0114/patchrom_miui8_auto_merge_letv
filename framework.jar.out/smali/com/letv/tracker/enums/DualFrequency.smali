.class public final enum Lcom/letv/tracker/enums/DualFrequency;
.super Ljava/lang/Enum;
.source "DualFrequency.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/DualFrequency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/DualFrequency;

.field public static final enum Auto:Lcom/letv/tracker/enums/DualFrequency;

.field public static final enum _2_4G:Lcom/letv/tracker/enums/DualFrequency;

.field public static final enum _4G:Lcom/letv/tracker/enums/DualFrequency;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/letv/tracker/enums/DualFrequency;

    const-string v1, "_2_4G"

    const-string v2, "2.4g"

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/tracker/enums/DualFrequency;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/DualFrequency;->_2_4G:Lcom/letv/tracker/enums/DualFrequency;

    new-instance v0, Lcom/letv/tracker/enums/DualFrequency;

    const-string v1, "_4G"

    const-string v2, "3g"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/DualFrequency;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/DualFrequency;->_4G:Lcom/letv/tracker/enums/DualFrequency;

    new-instance v0, Lcom/letv/tracker/enums/DualFrequency;

    const-string v1, "Auto"

    const-string v2, "auto"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/enums/DualFrequency;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/DualFrequency;->Auto:Lcom/letv/tracker/enums/DualFrequency;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/letv/tracker/enums/DualFrequency;

    sget-object v1, Lcom/letv/tracker/enums/DualFrequency;->_2_4G:Lcom/letv/tracker/enums/DualFrequency;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/tracker/enums/DualFrequency;->_4G:Lcom/letv/tracker/enums/DualFrequency;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/DualFrequency;->Auto:Lcom/letv/tracker/enums/DualFrequency;

    aput-object v1, v0, v5

    sput-object v0, Lcom/letv/tracker/enums/DualFrequency;->$VALUES:[Lcom/letv/tracker/enums/DualFrequency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/letv/tracker/enums/DualFrequency;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/DualFrequency;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/letv/tracker/enums/DualFrequency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/DualFrequency;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/DualFrequency;
    .locals 1

    .prologue
    sget-object v0, Lcom/letv/tracker/enums/DualFrequency;->$VALUES:[Lcom/letv/tracker/enums/DualFrequency;

    invoke-virtual {v0}, [Lcom/letv/tracker/enums/DualFrequency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/DualFrequency;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/enums/DualFrequency;->id:Ljava/lang/String;

    return-object v0
.end method
