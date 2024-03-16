//
//  ComponentStore.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import Foundation
import SwiftUI

@Observable
final class ComponentStore {
    static let shared = ComponentStore()
    
    var components: [Component]
    
    init(components: [Component] = componentData) {
        self.components = components
    }
    
    static var componentData: [Component] = [
        
        //Text Input / Output
        Component(name: "Text", icon: "pencil.and.scribble", linkText: "swiftui/text", section: "Text Input / Output", destination: AnyView(TextView())),
        Component(name: "Label", icon: "tag", linkText: "swiftui/label", section: "Text Input / Output", destination: AnyView(LabelView())),
        Component(name: "TextField", icon: "highlighter", linkText: "swiftui/textfield", section: "Text Input / Output", destination: AnyView(TextFieldView())),
        Component(name: "SecureField",  icon: "rectangle.and.pencil.and.ellipsis", linkText: "swiftui/securefield", section: "Text Input / Output", destination: AnyView(SecureFieldView())),
        Component(name: "TextArea", icon: "square.and.pencil", linkText: "appkit/nsaccessibility/role/1533503-textarea", section: "Text Input / Output", destination: AnyView(TextAreaView())),
        Component(name: "Image", icon: "photo", linkText: "swiftui/image", section: "Text Input / Output", destination: AnyView(ImageView())),
        
        //Controls
        Component(name: "Button", icon: "button.programmable", linkText: "swiftui/button", section: "Controls", destination: AnyView(ButtonView())),
        Component(name: "Menu", icon: "filemenu.and.selection", linkText: "swiftui/menu/" ,section: "Controls", destination: AnyView(MenuView())),
        Component(name: "Link", icon: "link", linkText: "swiftui/link", section: "Controls", destination: AnyView(LinkView())),
        Component(name: "Slider", icon: "slider.horizontal.below.rectangle", linkText: "swiftui/slider", section: "Controls", destination: AnyView(SliderView())),
        Component(name: "Stepper", icon: "figure.stair.stepper", linkText: "swiftui/stepper", section: "Controls", destination: AnyView(StepperView())),
        Component(name: "Toggle", icon: "switch.2", linkText: "swiftui/toggle", section: "Controls", destination: AnyView(ToggleView())),
        Component(name: "Picker", icon: "pencil", linkText: "swiftui/picker",section: "Controls", destination: AnyView(PickerView())),
        Component(name: "DatePicker", icon: "calendar.badge.plus", linkText: "swiftui/datepicker", section: "Controls", destination: AnyView(DatePickerView())),
        Component(name: "ColorPicker", icon: "paintpalette", linkText: "swiftui/colorpicker", section: "Controls", destination: AnyView(ColorPickerView())),
        Component(name: "ProgressView", icon: "lines.measurement.horizontal", linkText: "swiftui/progressview", section: "Controls", destination: AnyView(ProgressViewView())),
        
        //Container Views
        Component(name: "HStack", icon: "square.stack.3d.down.forward", linkText: "swiftui/hstack", section: "Container Views", destination: AnyView(HStackView())),
        Component(name: "VStack", icon: "square.stack.3d.up", linkText: "swiftui/vstack", section: "Container Views", destination: AnyView(VStackView())),
        Component(name: "ZStack", icon: "rectangle.stack", linkText: "swiftui/zstack", section: "Container Views", destination: AnyView(ZStackView())),
        Component(name: "Form", icon: "character.textbox", linkText: "swiftui/form", section: "Container Views", destination: AnyView(FormView())),
        Component(name: "NavigationView", icon: "arrow.forward.square.fill", linkText: "swiftui/navigationview", section: "Container Views", destination: AnyView(NavigationView())),
        Component(name: "Alert", icon: "bell.badge.waveform", linkText: "swiftui/alert", section: "Container Views", destination: AnyView(AlertView())),
        Component(name: "Sheets", icon: "newspaper.fill", linkText: "swiftui/presentationadaptation/sheet", section: "Container Views", destination: AnyView(SheetsView())),
        
        //List
        Component(name: "PlainView", icon: "list.clipboard", linkText: "swiftui/plainliststyle", section: "List", destination: AnyView(PlainView())),
        Component(name: "InsetView", icon: "rectangle.center.inset.filled", linkText: "swiftui/insetliststyle", section: "List", destination: AnyView(InsetView())),
        Component(name: "GroupedView", icon: "rectangle.3.group", linkText: "swiftui/groupedliststyle", section: "List", destination: AnyView(GroupedView())),
        Component(name: "InsetGroupedView", icon: "rectangle.3.group.fill", linkText: "swiftui/insetgroupedliststyle", section: "List", destination: AnyView(InsetGroupedView())),
        Component(name: "SidebarView", icon: "sidebar.squares.left", linkText: "swiftui/sidebarliststyle", section: "List", destination: AnyView(SidebarView())),
    ]
    
    static var testComponentStore: ComponentStore = ComponentStore(components: componentData)
}

