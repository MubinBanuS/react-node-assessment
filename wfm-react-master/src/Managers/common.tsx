/**
 * Splits skills and render each item as button 
 * @param value  skill
 * @returns Returns skill column element
 */
export function styleSkill(value: string) {
    let skills = value.split(',');
    return (
        <div>
            <td className="skillColumnStyle" style={{ minWidth: "400px" }}>
                {skills.map((skill: any) => (<button className="btn btn-default btn-sm">{skill}</button>))}
            </td>
        </div>
    );
};