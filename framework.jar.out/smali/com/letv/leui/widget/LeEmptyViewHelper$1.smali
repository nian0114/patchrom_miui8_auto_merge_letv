.class final Lcom/letv/leui/widget/LeEmptyViewHelper$1;
.super Ljava/lang/Object;
.source "LeEmptyViewHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeEmptyViewHelper;->initViewAction(Landroid/content/Context;ILcom/letv/leui/widget/LeEmptyView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/letv/leui/widget/LeEmptyViewHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyViewHelper$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x2

    # invokes: Lcom/letv/leui/widget/LeEmptyViewHelper;->handleAction(Landroid/content/Context;I)V
    invoke-static {v0, v1}, Lcom/letv/leui/widget/LeEmptyViewHelper;->access$000(Landroid/content/Context;I)V

    .line 23
    return-void
.end method
