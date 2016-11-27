.class public final enum Lcom/letv/tracker/enums/BufferCause;
.super Ljava/lang/Enum;
.source "BufferCause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/BufferCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/BufferCause;

.field public static final enum BlockNormalPlay:Lcom/letv/tracker/enums/BufferCause;

.field public static final enum Drag:Lcom/letv/tracker/enums/BufferCause;

.field public static final enum InitPlay:Lcom/letv/tracker/enums/BufferCause;

.field public static final enum SwitchBitStream:Lcom/letv/tracker/enums/BufferCause;

.field public static final enum SwitchStation:Lcom/letv/tracker/enums/BufferCause;


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

    new-instance v0, Lcom/letv/tracker/enums/BufferCause;

    const-string v1, "BlockNormalPlay"

    const-string v2, "blockNormalPlay"

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/tracker/enums/BufferCause;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/BufferCause;->BlockNormalPlay:Lcom/letv/tracker/enums/BufferCause;

    new-instance v0, Lcom/letv/tracker/enums/BufferCause;

    const-string v1, "InitPlay"

    const-string v2, "initPlay"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/BufferCause;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/BufferCause;->InitPlay:Lcom/letv/tracker/enums/BufferCause;

    new-instance v0, Lcom/letv/tracker/enums/BufferCause;

    const-string v1, "Drag"

    const-string v2, "drag"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/enums/BufferCause;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/BufferCause;->Drag:Lcom/letv/tracker/enums/BufferCause;

    new-instance v0, Lcom/letv/tracker/enums/BufferCause;

    const-string v1, "SwitchStation"

    const-string v2, "switchStation"

    invoke-direct {v0, v1, v6, v2}, Lcom/letv/tracker/enums/BufferCause;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/BufferCause;->SwitchStation:Lcom/letv/tracker/enums/BufferCause;

    new-instance v0, Lcom/letv/tracker/enums/BufferCause;

    const-string v1, "SwitchBitStream"

    const-string v2, "switchBitStream"

    invoke-direct {v0, v1, v7, v2}, Lcom/letv/tracker/enums/BufferCause;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/BufferCause;->SwitchBitStream:Lcom/letv/tracker/enums/BufferCause;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/letv/tracker/enums/BufferCause;

    sget-object v1, Lcom/letv/tracker/enums/BufferCause;->BlockNormalPlay:Lcom/letv/tracker/enums/BufferCause;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/tracker/enums/BufferCause;->InitPlay:Lcom/letv/tracker/enums/BufferCause;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/BufferCause;->Drag:Lcom/letv/tracker/enums/BufferCause;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/tracker/enums/BufferCause;->SwitchStation:Lcom/letv/tracker/enums/BufferCause;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/tracker/enums/BufferCause;->SwitchBitStream:Lcom/letv/tracker/enums/BufferCause;

    aput-object v1, v0, v7

    sput-object v0, Lcom/letv/tracker/enums/BufferCause;->$VALUES:[Lcom/letv/tracker/enums/BufferCause;

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

    iput-object p3, p0, Lcom/letv/tracker/enums/BufferCause;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/BufferCause;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/letv/tracker/enums/BufferCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/BufferCause;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/BufferCause;
    .locals 1

    .prologue
    sget-object v0, Lcom/letv/tracker/enums/BufferCause;->$VALUES:[Lcom/letv/tracker/enums/BufferCause;

    invoke-virtual {v0}, [Lcom/letv/tracker/enums/BufferCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/BufferCause;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/enums/BufferCause;->id:Ljava/lang/String;

    return-object v0
.end method
