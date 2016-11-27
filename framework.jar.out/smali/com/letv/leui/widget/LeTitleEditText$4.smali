.class Lcom/letv/leui/widget/LeTitleEditText$4;
.super Ljava/lang/Object;
.source "LeTitleEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeTitleEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeTitleEditText;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeTitleEditText;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditText$4;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$4;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    # getter for: Lcom/letv/leui/widget/LeTitleEditText;->mOnQueryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->access$700(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$4;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    # getter for: Lcom/letv/leui/widget/LeTitleEditText;->mOnQueryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->access$700(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
