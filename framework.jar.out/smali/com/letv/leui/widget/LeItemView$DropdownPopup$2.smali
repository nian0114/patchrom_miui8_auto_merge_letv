.class Lcom/letv/leui/widget/LeItemView$DropdownPopup$2;
.super Ljava/lang/Object;
.source "LeItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeItemView$DropdownPopup;-><init>(Lcom/letv/leui/widget/LeItemView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

.field final synthetic val$this$0:Lcom/letv/leui/widget/LeItemView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeItemView$DropdownPopup;Lcom/letv/leui/widget/LeItemView;)V
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$2;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iput-object p2, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$2;->val$this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$2;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->dismiss()V

    .line 813
    return-void
.end method
