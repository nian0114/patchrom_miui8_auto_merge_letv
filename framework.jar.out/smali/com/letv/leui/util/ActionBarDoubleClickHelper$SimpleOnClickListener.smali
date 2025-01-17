.class Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;
.super Ljava/lang/Object;
.source "ActionBarDoubleClickHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/ActionBarDoubleClickHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleOnClickListener"
.end annotation


# static fields
.field private static final DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final INVALID_TIME:J = -0x1L


# instance fields
.field private mDoubleClickListener:Lcom/letv/leui/util/ActionBarDoubleClickHelper$OnDoubleClickListener;

.field private mLastClickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;->mLastClickTime:J

    return-void
.end method


# virtual methods
.method public getOnDoubleClickListener(Lcom/letv/leui/util/ActionBarDoubleClickHelper$OnDoubleClickListener;)Lcom/letv/leui/util/ActionBarDoubleClickHelper$OnDoubleClickListener;
    .locals 1
    .param p1, "l"    # Lcom/letv/leui/util/ActionBarDoubleClickHelper$OnDoubleClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;->mDoubleClickListener:Lcom/letv/leui/util/ActionBarDoubleClickHelper$OnDoubleClickListener;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, -0x1

    iget-wide v4, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;->mLastClickTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;->mLastClickTime:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;->mLastClickTime:J

    sub-long v2, v0, v4

    .local v2, "deltaTime":J
    const-wide/16 v4, 0x28

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    sget v4, Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    iput-wide v0, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;->mLastClickTime:J

    goto :goto_0

    :cond_2
    iput-wide v6, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;->mLastClickTime:J

    iget-object v4, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;->mDoubleClickListener:Lcom/letv/leui/util/ActionBarDoubleClickHelper$OnDoubleClickListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;->mDoubleClickListener:Lcom/letv/leui/util/ActionBarDoubleClickHelper$OnDoubleClickListener;

    invoke-interface {v4}, Lcom/letv/leui/util/ActionBarDoubleClickHelper$OnDoubleClickListener;->onDoubleClick()V

    goto :goto_0
.end method

.method public setOnDoubleClickListener(Lcom/letv/leui/util/ActionBarDoubleClickHelper$OnDoubleClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/util/ActionBarDoubleClickHelper$OnDoubleClickListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/util/ActionBarDoubleClickHelper$SimpleOnClickListener;->mDoubleClickListener:Lcom/letv/leui/util/ActionBarDoubleClickHelper$OnDoubleClickListener;

    return-void
.end method
