.class public final enum Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field public static final enum FLIP:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field public static final enum ROTATE:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1286
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    const-string v1, "ROTATE"

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 1292
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    const-string v1, "FLIP"

    invoke-direct {v0, v1, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 1281
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

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
    .line 1281
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1

    .prologue
    .line 1295
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method

.method static mapIntToValue(I)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1
    .param p0, "modeInt"    # I

    .prologue
    .line 1307
    packed-switch p0, :pswitch_data_0

    .line 1310
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 1312
    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    goto :goto_0

    .line 1307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1281
    const-class v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method

.method public static values()[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1

    .prologue
    .line 1281
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v0}, [Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method


# virtual methods
.method createLoadingLayout(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1317
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$AnimationStyle:[I

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1320
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 1322
    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 1317
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method createLoadingLayout(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;Z)Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;
    .param p5, "isHeader"    # Z

    .prologue
    .line 1329
    if-nez p5, :cond_0

    .line 1330
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$AnimationStyle:[I

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1333
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 1345
    :goto_0
    return-object v0

    .line 1335
    :pswitch_0
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 1339
    :cond_0
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$AnimationStyle:[I

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 1342
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createLoadingLayout ---> mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1343
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 1345
    :pswitch_1
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 1330
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1339
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method
