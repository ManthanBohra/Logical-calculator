classdef calcsaurav_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure             matlab.ui.Figure
        ResultPanel          matlab.ui.container.Panel
        OutputTextArea       matlab.ui.control.TextArea
        OutputTextAreaLabel  matlab.ui.control.Label
        InputsbyuserPanel    matlab.ui.container.Panel
        Input2TextArea       matlab.ui.control.TextArea
        Input2TextAreaLabel  matlab.ui.control.Label
        Input1TextArea       matlab.ui.control.TextArea
        Input1TextAreaLabel  matlab.ui.control.Label
        OperatorsPanel       matlab.ui.container.Panel
        Button_8             matlab.ui.control.Button
        XORButton            matlab.ui.control.Button
        Button_7             matlab.ui.control.Button
        Button_6             matlab.ui.control.Button
        Button_5             matlab.ui.control.Button
        Button_4             matlab.ui.control.Button
        Button_3             matlab.ui.control.Button
        Button_2             matlab.ui.control.Button
        Button               matlab.ui.control.Button
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: Button
        function ButtonPushed(app, event)
            a = str2double(app.Input1TextArea.Value);
            b = str2double(app.Input2TextArea.Value);
            c = a + b;
            app.OutputTextArea.Value = num2str(c);
        end

        % Button pushed function: Button_2
        function Button_2Pushed(app, event)
            a=str2double(app.Input1TextArea.Value);
            b=str2double(app.Input2TextArea.Value);
            c=a-b;
            app.OutputTextArea.Value= num2str(c);
        end

        % Button pushed function: Button_3
        function Button_3Pushed(app, event)
            a = str2double(app.Input1TextArea.Value);
            b = str2double(app.Input2TextArea.Value);
            c = a * b;
            app.OutputTextArea.Value = num2str(c);
        end

        % Button pushed function: Button_4
        function Button_4Pushed(app, event)
            a = str2double(app.Input1TextArea.Value);
            b = str2double(app.Input2TextArea.Value);
            c = a / b;
            app.OutputTextArea.Value = num2str(c);
        end

        % Button pushed function: Button_5
        function Button_5Pushed(app, event)
            a = str2double(app.Input1TextArea.Value);
            b = str2double(app.Input2TextArea.Value);
            c = a ^ b;
            app.OutputTextArea.Value = num2str(c);
        end

        % Button pushed function: Button_6
        function Button_6Pushed(app, event)
             a = str2double(app.Input1TextArea.Value);
             b = str2double(app.Input2TextArea.Value);
             c = bitand(a, b);
    
            % Convert the result to binary string
            binaryResult = dec2bin(c);
    
            % Display the result in the output text area
            app.OutputTextArea.Value = binaryResult;
        end

        % Button pushed function: Button_7
        function Button_7Pushed(app, event)
             a = str2double(app.Input1TextArea.Value);  % Get first input number
             b = str2double(app.Input2TextArea.Value);  % Get second input number
    
    % Perform bitwise OR operation
             c = bitor(a, b);
    
    % Convert the result to binary string
    binaryResult = dec2bin(c);
    
    % Display the result in the output text area
    app.OutputTextArea.Value = binaryResult;
        end

        % Button pushed function: XORButton
        function XORButtonPushed(app, event)
            a = str2double(app.Input1TextArea.Value);  % Get first input number
            b = str2double(app.Input2TextArea.Value);  % Get second input number
    
    % Perform bitwise XOR operation
    c = bitxor(a, b);
    
    % Convert the result to binary string
    binaryResult = dec2bin(c);
   
    % Display the result in the output text area
    app.OutputTextArea.Value = binaryResult;
        end

        % Button pushed function: Button_8
        function Button_8Pushed(app, event)
    a = str2double(app.Input1TextArea.Value);  % Get first input number
    b = str2double(app.Input2TextArea.Value);  % Get second input number
    
    compareResult = a == b;
    
    % Convert the result to binary string
    binaryResult = dec2bin(compareResult);
    
    % Display the result in the output text area
    app.OutputTextArea.Value = binaryResult;
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create OperatorsPanel
            app.OperatorsPanel = uipanel(app.UIFigure);
            app.OperatorsPanel.ForegroundColor = [0.851 0.3255 0.098];
            app.OperatorsPanel.TitlePosition = 'centertop';
            app.OperatorsPanel.Title = 'Operators';
            app.OperatorsPanel.BackgroundColor = [0.8 0.8 0.8];
            app.OperatorsPanel.FontWeight = 'bold';
            app.OperatorsPanel.FontSize = 14;
            app.OperatorsPanel.Position = [12 12 300 456];

            % Create Button
            app.Button = uibutton(app.OperatorsPanel, 'push');
            app.Button.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button.BackgroundColor = [0 1 1];
            app.Button.FontSize = 36;
            app.Button.FontColor = [1 0 0];
            app.Button.Position = [15 312 87 110];
            app.Button.Text = '+';

            % Create Button_2
            app.Button_2 = uibutton(app.OperatorsPanel, 'push');
            app.Button_2.ButtonPushedFcn = createCallbackFcn(app, @Button_2Pushed, true);
            app.Button_2.BackgroundColor = [0 1 1];
            app.Button_2.FontSize = 48;
            app.Button_2.FontColor = [1 0 0];
            app.Button_2.Position = [110 312 85 110];
            app.Button_2.Text = '-';

            % Create Button_3
            app.Button_3 = uibutton(app.OperatorsPanel, 'push');
            app.Button_3.ButtonPushedFcn = createCallbackFcn(app, @Button_3Pushed, true);
            app.Button_3.BackgroundColor = [0 1 1];
            app.Button_3.FontSize = 48;
            app.Button_3.FontColor = [1 0 0];
            app.Button_3.Position = [209 312 79 110];
            app.Button_3.Text = '*';

            % Create Button_4
            app.Button_4 = uibutton(app.OperatorsPanel, 'push');
            app.Button_4.ButtonPushedFcn = createCallbackFcn(app, @Button_4Pushed, true);
            app.Button_4.BackgroundColor = [0 1 1];
            app.Button_4.FontSize = 48;
            app.Button_4.FontColor = [1 0 0];
            app.Button_4.Position = [15 163 86 130];
            app.Button_4.Text = '/';

            % Create Button_5
            app.Button_5 = uibutton(app.OperatorsPanel, 'push');
            app.Button_5.ButtonPushedFcn = createCallbackFcn(app, @Button_5Pushed, true);
            app.Button_5.BackgroundColor = [0 1 1];
            app.Button_5.FontSize = 48;
            app.Button_5.FontWeight = 'bold';
            app.Button_5.FontColor = [1 0 0];
            app.Button_5.Position = [110 163 86 130];
            app.Button_5.Text = '^';

            % Create Button_6
            app.Button_6 = uibutton(app.OperatorsPanel, 'push');
            app.Button_6.ButtonPushedFcn = createCallbackFcn(app, @Button_6Pushed, true);
            app.Button_6.BackgroundColor = [0 1 1];
            app.Button_6.FontSize = 28;
            app.Button_6.FontWeight = 'bold';
            app.Button_6.FontColor = [1 0 0];
            app.Button_6.Position = [207 163 84 130];
            app.Button_6.Text = '&&';

            % Create Button_7
            app.Button_7 = uibutton(app.OperatorsPanel, 'push');
            app.Button_7.ButtonPushedFcn = createCallbackFcn(app, @Button_7Pushed, true);
            app.Button_7.BackgroundColor = [0 1 1];
            app.Button_7.FontSize = 26;
            app.Button_7.FontWeight = 'bold';
            app.Button_7.FontColor = [1 0 0];
            app.Button_7.Position = [111 30 85 111];
            app.Button_7.Text = '| |';

            % Create XORButton
            app.XORButton = uibutton(app.OperatorsPanel, 'push');
            app.XORButton.ButtonPushedFcn = createCallbackFcn(app, @XORButtonPushed, true);
            app.XORButton.BackgroundColor = [0 1 1];
            app.XORButton.FontSize = 24;
            app.XORButton.FontWeight = 'bold';
            app.XORButton.FontColor = [1 0 0];
            app.XORButton.Position = [206 30 85 111];
            app.XORButton.Text = 'XOR';

            % Create Button_8
            app.Button_8 = uibutton(app.OperatorsPanel, 'push');
            app.Button_8.ButtonPushedFcn = createCallbackFcn(app, @Button_8Pushed, true);
            app.Button_8.BackgroundColor = [0 1 1];
            app.Button_8.FontSize = 24;
            app.Button_8.FontWeight = 'bold';
            app.Button_8.FontColor = [1 0 0];
            app.Button_8.Position = [17 30 84 111];
            app.Button_8.Text = '==';

            % Create InputsbyuserPanel
            app.InputsbyuserPanel = uipanel(app.UIFigure);
            app.InputsbyuserPanel.ForegroundColor = [1 0 0];
            app.InputsbyuserPanel.TitlePosition = 'centertop';
            app.InputsbyuserPanel.Title = 'Inputs by user';
            app.InputsbyuserPanel.BackgroundColor = [0.8 0.8 0.8];
            app.InputsbyuserPanel.FontWeight = 'bold';
            app.InputsbyuserPanel.Position = [321 219 320 248];

            % Create Input1TextAreaLabel
            app.Input1TextAreaLabel = uilabel(app.InputsbyuserPanel);
            app.Input1TextAreaLabel.HorizontalAlignment = 'right';
            app.Input1TextAreaLabel.FontSize = 18;
            app.Input1TextAreaLabel.FontColor = [1 0 0];
            app.Input1TextAreaLabel.Position = [44 190 55 23];
            app.Input1TextAreaLabel.Text = 'Input1';

            % Create Input1TextArea
            app.Input1TextArea = uitextarea(app.InputsbyuserPanel);
            app.Input1TextArea.FontSize = 18;
            app.Input1TextArea.FontColor = [1 0 0];
            app.Input1TextArea.Position = [114 149 181 66];

            % Create Input2TextAreaLabel
            app.Input2TextAreaLabel = uilabel(app.InputsbyuserPanel);
            app.Input2TextAreaLabel.HorizontalAlignment = 'right';
            app.Input2TextAreaLabel.FontSize = 18;
            app.Input2TextAreaLabel.FontColor = [1 0 0];
            app.Input2TextAreaLabel.Position = [44 91 55 23];
            app.Input2TextAreaLabel.Text = 'Input2';

            % Create Input2TextArea
            app.Input2TextArea = uitextarea(app.InputsbyuserPanel);
            app.Input2TextArea.FontSize = 18;
            app.Input2TextArea.FontColor = [1 0 0];
            app.Input2TextArea.Position = [114 59 179 57];

            % Create ResultPanel
            app.ResultPanel = uipanel(app.UIFigure);
            app.ResultPanel.ForegroundColor = [1 0 0];
            app.ResultPanel.TitlePosition = 'centertop';
            app.ResultPanel.Title = 'Result';
            app.ResultPanel.BackgroundColor = [0.8 0.8 0.8];
            app.ResultPanel.Position = [322 21 313 170];

            % Create OutputTextAreaLabel
            app.OutputTextAreaLabel = uilabel(app.ResultPanel);
            app.OutputTextAreaLabel.HorizontalAlignment = 'right';
            app.OutputTextAreaLabel.FontSize = 18;
            app.OutputTextAreaLabel.FontWeight = 'bold';
            app.OutputTextAreaLabel.FontColor = [1 0 0];
            app.OutputTextAreaLabel.Position = [34 90 64 23];
            app.OutputTextAreaLabel.Text = 'Output';

            % Create OutputTextArea
            app.OutputTextArea = uitextarea(app.ResultPanel);
            app.OutputTextArea.FontSize = 18;
            app.OutputTextArea.FontWeight = 'bold';
            app.OutputTextArea.FontColor = [1 0 0];
            app.OutputTextArea.Position = [113 53 178 62];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = calcsaurav_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end