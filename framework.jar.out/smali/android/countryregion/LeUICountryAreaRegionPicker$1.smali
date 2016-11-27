.class final Landroid/countryregion/LeUICountryAreaRegionPicker$1;
.super Landroid/widget/ArrayAdapter;
.source "LeUICountryAreaRegionPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/countryregion/LeUICountryAreaRegionPicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fieldId:I

.field final synthetic val$inflater:Landroid/view/LayoutInflater;

.field final synthetic val$layoutId:I


# direct methods
.method constructor <init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;II)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 128
    .local p4, "x3":Ljava/util/List;, "Ljava/util/List<Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;>;"
    iput-object p5, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$1;->val$inflater:Landroid/view/LayoutInflater;

    iput p6, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$1;->val$layoutId:I

    iput p7, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$1;->val$fieldId:I

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 132
    # getter for: Landroid/countryregion/LeUICountryAreaRegionPicker;->mLocaleInfos:Ljava/util/List;
    invoke-static {}, Landroid/countryregion/LeUICountryAreaRegionPicker;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Landroid/countryregion/LeUICountryAreaRegionPicker$1;->getItem(I)Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 138
    if-nez p2, :cond_0

    .line 139
    iget-object v4, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$1;->val$inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$1;->val$layoutId:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 140
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Landroid/countryregion/LeUICountryAreaRegionPicker$1;->val$fieldId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 141
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    :goto_0
    invoke-virtual {p0, p1}, Landroid/countryregion/LeUICountryAreaRegionPicker$1;->getItem(I)Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    move-result-object v1

    .line 147
    .local v1, "item":Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;
    iget-object v4, v1, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const v4, 0x1020001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "cb":Landroid/view/View;
    # getter for: Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrentSelectedInfo:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;
    invoke-static {}, Landroid/countryregion/LeUICountryAreaRegionPicker;->access$100()Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    if-eqz v4, :cond_1

    # getter for: Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrentSelectedInfo:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;
    invoke-static {}, Landroid/countryregion/LeUICountryAreaRegionPicker;->access$100()Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    iget-object v5, v1, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 151
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :goto_1
    return-object v3

    .line 143
    .end local v0    # "cb":Landroid/view/View;
    .end local v1    # "item":Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;
    .end local v2    # "text":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    move-object v3, p2

    .line 144
    .restart local v3    # "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .restart local v2    # "text":Landroid/widget/TextView;
    goto :goto_0

    .line 153
    .restart local v0    # "cb":Landroid/view/View;
    .restart local v1    # "item":Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;
    :cond_1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 154
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
