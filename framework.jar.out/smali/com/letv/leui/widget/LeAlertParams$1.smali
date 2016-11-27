.class Lcom/letv/leui/widget/LeAlertParams$1;
.super Ljava/lang/Object;
.source "LeAlertParams.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeAlertParams;->setStyle(Landroid/content/DialogInterface$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeAlertParams;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeAlertParams;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeAlertParams$1;->this$0:Lcom/letv/leui/widget/LeAlertParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams$1;->this$0:Lcom/letv/leui/widget/LeAlertParams;

    # getter for: Lcom/letv/leui/widget/LeAlertParams;->checkBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/letv/leui/widget/LeAlertParams;->access$000(Lcom/letv/leui/widget/LeAlertParams;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams$1;->this$0:Lcom/letv/leui/widget/LeAlertParams;

    # getter for: Lcom/letv/leui/widget/LeAlertParams;->checkBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/letv/leui/widget/LeAlertParams;->access$000(Lcom/letv/leui/widget/LeAlertParams;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams$1;->this$0:Lcom/letv/leui/widget/LeAlertParams;

    # getter for: Lcom/letv/leui/widget/LeAlertParams;->checkBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/letv/leui/widget/LeAlertParams;->access$000(Lcom/letv/leui/widget/LeAlertParams;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
