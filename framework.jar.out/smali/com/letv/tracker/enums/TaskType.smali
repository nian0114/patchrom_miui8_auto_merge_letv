.class public final enum Lcom/letv/tracker/enums/TaskType;
.super Ljava/lang/Enum;
.source "TaskType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/TaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/TaskType;

.field public static final enum BT:Lcom/letv/tracker/enums/TaskType;

.field public static final enum FTP:Lcom/letv/tracker/enums/TaskType;

.field public static final enum HTTP:Lcom/letv/tracker/enums/TaskType;

.field public static final enum Letv:Lcom/letv/tracker/enums/TaskType;

.field public static final enum Others:Lcom/letv/tracker/enums/TaskType;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/letv/tracker/enums/TaskType;

    const-string v1, "Letv"

    const-string v2, "letv"

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/tracker/enums/TaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/TaskType;->Letv:Lcom/letv/tracker/enums/TaskType;

    new-instance v0, Lcom/letv/tracker/enums/TaskType;

    const-string v1, "BT"

    const-string v2, "bt"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/TaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/TaskType;->BT:Lcom/letv/tracker/enums/TaskType;

    new-instance v0, Lcom/letv/tracker/enums/TaskType;

    const-string v1, "FTP"

    const-string v2, "ftp"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/enums/TaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/TaskType;->FTP:Lcom/letv/tracker/enums/TaskType;

    new-instance v0, Lcom/letv/tracker/enums/TaskType;

    const-string v1, "HTTP"

    const-string v2, "http"

    invoke-direct {v0, v1, v6, v2}, Lcom/letv/tracker/enums/TaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/TaskType;->HTTP:Lcom/letv/tracker/enums/TaskType;

    new-instance v0, Lcom/letv/tracker/enums/TaskType;

    const-string v1, "Others"

    const-string v2, "others"

    invoke-direct {v0, v1, v7, v2}, Lcom/letv/tracker/enums/TaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/TaskType;->Others:Lcom/letv/tracker/enums/TaskType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/letv/tracker/enums/TaskType;

    sget-object v1, Lcom/letv/tracker/enums/TaskType;->Letv:Lcom/letv/tracker/enums/TaskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/tracker/enums/TaskType;->BT:Lcom/letv/tracker/enums/TaskType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/TaskType;->FTP:Lcom/letv/tracker/enums/TaskType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/tracker/enums/TaskType;->HTTP:Lcom/letv/tracker/enums/TaskType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/tracker/enums/TaskType;->Others:Lcom/letv/tracker/enums/TaskType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/letv/tracker/enums/TaskType;->$VALUES:[Lcom/letv/tracker/enums/TaskType;

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

    iput-object p3, p0, Lcom/letv/tracker/enums/TaskType;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/TaskType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/letv/tracker/enums/TaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/TaskType;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/TaskType;
    .locals 1

    .prologue
    sget-object v0, Lcom/letv/tracker/enums/TaskType;->$VALUES:[Lcom/letv/tracker/enums/TaskType;

    invoke-virtual {v0}, [Lcom/letv/tracker/enums/TaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/TaskType;

    return-object v0
.end method


# virtual methods
.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/enums/TaskType;->id:Ljava/lang/String;

    return-object v0
.end method
