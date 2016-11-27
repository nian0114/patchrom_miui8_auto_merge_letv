.class public final enum Lcom/letv/tracker/enums/EventResult;
.super Ljava/lang/Enum;
.source "EventResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/EventResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/EventResult;

.field public static final enum Cancel:Lcom/letv/tracker/enums/EventResult;

.field public static final enum Failed:Lcom/letv/tracker/enums/EventResult;

.field public static final enum Success:Lcom/letv/tracker/enums/EventResult;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/letv/tracker/enums/EventResult;

    const-string v1, "Success"

    const-string v2, "0"

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/tracker/enums/EventResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/EventResult;->Success:Lcom/letv/tracker/enums/EventResult;

    new-instance v0, Lcom/letv/tracker/enums/EventResult;

    const-string v1, "Failed"

    const-string v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/EventResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/EventResult;->Failed:Lcom/letv/tracker/enums/EventResult;

    new-instance v0, Lcom/letv/tracker/enums/EventResult;

    const-string v1, "Cancel"

    const-string v2, "2"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/enums/EventResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/EventResult;->Cancel:Lcom/letv/tracker/enums/EventResult;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/letv/tracker/enums/EventResult;

    sget-object v1, Lcom/letv/tracker/enums/EventResult;->Success:Lcom/letv/tracker/enums/EventResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/tracker/enums/EventResult;->Failed:Lcom/letv/tracker/enums/EventResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/EventResult;->Cancel:Lcom/letv/tracker/enums/EventResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/letv/tracker/enums/EventResult;->$VALUES:[Lcom/letv/tracker/enums/EventResult;

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

    iput-object p3, p0, Lcom/letv/tracker/enums/EventResult;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/EventResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/letv/tracker/enums/EventResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/EventResult;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/EventResult;
    .locals 1

    .prologue
    sget-object v0, Lcom/letv/tracker/enums/EventResult;->$VALUES:[Lcom/letv/tracker/enums/EventResult;

    invoke-virtual {v0}, [Lcom/letv/tracker/enums/EventResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/EventResult;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/enums/EventResult;->id:Ljava/lang/String;

    return-object v0
.end method
