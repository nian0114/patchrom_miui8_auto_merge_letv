.class Lcom/letv/leui/widget/LeHorizontalScrollStripTab$CustomScroller;
.super Landroid/widget/OverScroller;
.source "LeHorizontalScrollStripTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomScroller"
.end annotation


# instance fields
.field public scrollDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 527
    invoke-direct {p0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 528
    return-void
.end method


# virtual methods
.method public startScroll(IIIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 531
    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$CustomScroller;->scrollDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 532
    return-void
.end method
