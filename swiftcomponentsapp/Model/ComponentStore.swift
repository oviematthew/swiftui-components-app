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
    
    init(components: [Component] = mockData) {
        self.components = components
    }
    
    static var mockData: [Component] = [
        
        //Text Input / Output
        Component(name: "Text", icon: "pencil.and.scribble", section: "Text Input / Output", destination: AnyView(TextView())),
        Component(name: "Label", icon: "tag", section: "Text Input / Output", destination: AnyView(LabelView())),
        Component(name: "TextField", icon: "highlighter", section: "Text Input / Output", destination: AnyView(TextFieldView())),
        Component(name: "SecureField", icon: "text.viewfinder", section: "Text Input / Output", destination: AnyView(SecureFieldView())),
        Component(name: "TextArea", icon: "square.and.pencil", section: "Text Input / Output", destination: AnyView(TextAreaView())),
        Component(name: "Image", icon: "photo", section: "Text Input / Output", destination: AnyView(ImageView())),
        
        //Controls
        Component(name: "Button", icon: "button.programmable", section: "Controls", destination: AnyView(ButtonView())),
        Component(name: "Menu", icon: "filemenu.and.selection", section: "Controls", destination: AnyView(MenuView())),
        Component(name: "Link", icon: "link", section: "Controls", destination: AnyView(LinkView())),
        Component(name: "SliderView", icon: "slider.horizontal.below.rectangle", section: "Controls", destination: AnyView(SliderView())),
        Component(name: "StepperView", icon: "figure.stair.stepper", section: "Controls", destination: AnyView(StepperView())),
        Component(name: "ToggleView", icon: "switch.2", section: "Controls", destination: AnyView(ToggleView())),
        Component(name: "PickerView", icon: "pencil", section: "Controls", destination: AnyView(PickerView())),
        Component(name: "DatePickerView", icon: "calendar.badge.plus", section: "Controls", destination: AnyView(DatePickerView())),
        Component(name: "ColorPickerView", icon: "paintpalette", section: "Controls", destination: AnyView(ColorPickerView())),
        Component(name: "ProgressView", icon: "lines.measurement.horizontal", section: "Controls", destination: AnyView(ProgressView())),
        
        //Container Views
        Component(name: "HStack", icon: "square.stack.3d.down.forward", section: "Container Views", destination: AnyView(HStackView())),
        Component(name: "VStack", icon: "square.stack.3d.up", section: "Container Views", destination: AnyView(VStackView())),
        Component(name: "ZStack", icon: "rectangle.stack", section: "Container Views", destination: AnyView(ZStackView())),
        Component(name: "Form", icon: "character.textbox", section: "Container Views", destination: AnyView(FormView())),
        Component(name: "Navigation View", icon: "arrow.forward.square.fill", section: "Container Views", destination: AnyView(NavigationView())),
        Component(name: "Alert", icon: "bell.badge.waveform", section: "Container Views", destination: AnyView(AlertView())),
        Component(name: "Sheets", icon: "newspaper.fill", section: "Container Views", destination: AnyView(SheetsView())),
        
        //List
        Component(name: "PlainView", icon: "list.clipboard", section: "List", destination: AnyView(PlainView())),
        Component(name: "InsetView", icon: "rectangle.center.inset.filled", section: "List", destination: AnyView(InsetView())),
        Component(name: "GroupedView", icon: "rectangle.3.group", section: "List", destination: AnyView(GroupedView())),
        Component(name: "InsetGroupedView", icon: "rectangle.3.group.fill", section: "List", destination: AnyView(InsetGroupedView())),
        Component(name: "SidebarView", icon: "sidebar.squares.left", section: "List", destination: AnyView(SidebarView())),
    ]
    
    static var testStore: ComponentStore = ComponentStore(components: mockData)
}

