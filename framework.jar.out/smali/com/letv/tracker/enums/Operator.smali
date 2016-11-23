.class public final enum Lcom/letv/tracker/enums/Operator;
.super Ljava/lang/Enum;
.source "Operator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/Operator;

.field public static final enum CMCC:Lcom/letv/tracker/enums/Operator;

.field public static final enum ChinaTelecom:Lcom/letv/tracker/enums/Operator;

.field public static final enum ChinaUnicom:Lcom/letv/tracker/enums/Operator;

.field public static final enum Other:Lcom/letv/tracker/enums/Operator;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/letv/tracker/enums/Operator;

    const-string v1, "CMCC"

    const-string v2, "cmcc"

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/tracker/enums/Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Operator;->CMCC:Lcom/letv/tracker/enums/Operator;

    .line 5
    new-instance v0, Lcom/letv/tracker/enums/Operator;

    const-string v1, "ChinaUnicom"

    const-string v2, "cu"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Operator;->ChinaUnicom:Lcom/letv/tracker/enums/Operator;

    .line 6
    new-instance v0, Lcom/letv/tracker/enums/Operator;

    const-string v1, "ChinaTelecom"

    const-string v2, "ct"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/enums/Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Operator;->ChinaTelecom:Lcom/letv/tracker/enums/Operator;

    .line 7
    new-instance v0, Lcom/letv/tracker/enums/Operator;

    const-string v1, "Other"

    const-string v2, "other"

    invoke-direct {v0, v1, v6, v2}, Lcom/letv/tracker/enums/Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Operator;->Other:Lcom/letv/tracker/enums/Operator;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/letv/tracker/enums/Operator;

    sget-object v1, Lcom/letv/tracker/enums/Operator;->CMCC:Lcom/letv/tracker/enums/Operator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/tracker/enums/Operator;->ChinaUnicom:Lcom/letv/tracker/enums/Operator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/Operator;->ChinaTelecom:Lcom/letv/tracker/enums/Operator;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/tracker/enums/Operator;->Other:Lcom/letv/tracker/enums/Operator;

    aput-object v1, v0, v6

    sput-object v0, Lcom/letv/tracker/enums/Operator;->$VALUES:[Lcom/letv/tracker/enums/Operator;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/letv/tracker/enums/Operator;->id:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/Operator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/letv/tracker/enums/Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/Operator;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/Operator;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/letv/tracker/enums/Operator;->$VALUES:[Lcom/letv/tracker/enums/Operator;

    invoke-virtual {v0}, [Lcom/letv/tracker/enums/Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/Operator;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/letv/tracker/enums/Operator;->id:Ljava/lang/String;

    return-object v0
.end method
