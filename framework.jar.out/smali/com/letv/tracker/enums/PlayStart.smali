.class public final enum Lcom/letv/tracker/enums/PlayStart;
.super Ljava/lang/Enum;
.source "PlayStart.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/PlayStart;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/PlayStart;

.field public static final enum Auto:Lcom/letv/tracker/enums/PlayStart;

.field public static final enum Manual:Lcom/letv/tracker/enums/PlayStart;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/letv/tracker/enums/PlayStart;

    const-string v1, "Auto"

    const-string v2, "auto"

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/tracker/enums/PlayStart;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/PlayStart;->Auto:Lcom/letv/tracker/enums/PlayStart;

    new-instance v0, Lcom/letv/tracker/enums/PlayStart;

    const-string v1, "Manual"

    const-string v2, "manual"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/PlayStart;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/PlayStart;->Manual:Lcom/letv/tracker/enums/PlayStart;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/letv/tracker/enums/PlayStart;

    sget-object v1, Lcom/letv/tracker/enums/PlayStart;->Auto:Lcom/letv/tracker/enums/PlayStart;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/tracker/enums/PlayStart;->Manual:Lcom/letv/tracker/enums/PlayStart;

    aput-object v1, v0, v4

    sput-object v0, Lcom/letv/tracker/enums/PlayStart;->$VALUES:[Lcom/letv/tracker/enums/PlayStart;

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

    iput-object p3, p0, Lcom/letv/tracker/enums/PlayStart;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/PlayStart;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/letv/tracker/enums/PlayStart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/PlayStart;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/PlayStart;
    .locals 1

    .prologue
    sget-object v0, Lcom/letv/tracker/enums/PlayStart;->$VALUES:[Lcom/letv/tracker/enums/PlayStart;

    invoke-virtual {v0}, [Lcom/letv/tracker/enums/PlayStart;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/PlayStart;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/enums/PlayStart;->id:Ljava/lang/String;

    return-object v0
.end method
