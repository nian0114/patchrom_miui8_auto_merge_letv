.class Lcom/letv/leui/preference/LeListPreference$DropdownPopup$2;
.super Ljava/lang/Object;
.source "LeListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeListPreference$DropdownPopup;-><init>(Lcom/letv/leui/preference/LeListPreference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

.field final synthetic val$this$0:Lcom/letv/leui/preference/LeListPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;Lcom/letv/leui/preference/LeListPreference;)V
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$2;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iput-object p2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$2;->val$this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 945
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$2;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->dismiss()V

    .line 946
    return-void
.end method
