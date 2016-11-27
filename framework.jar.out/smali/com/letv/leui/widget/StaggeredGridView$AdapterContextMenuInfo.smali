.class public Lcom/letv/leui/widget/StaggeredGridView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    iput p2, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterContextMenuInfo;->position:I

    iput-wide p3, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterContextMenuInfo;->id:J

    return-void
.end method
